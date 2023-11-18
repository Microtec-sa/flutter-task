import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/constants/colors.dart';
import 'package:movies_app/presentation/widgets/custom_cached_image.dart';

import '../../../../business_logic/bloc/cast/cast_bloc.dart';
import '../../../../constants/stings.dart';

class CreditsList extends StatelessWidget {
  const CreditsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CastBloc, CastState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadInProgress: () => const Center(
            child: CircularProgressIndicator(
              color: AppColors.secondaryColor,
            ),
          ),
          castFetched: (cast) => SizedBox(
            height: 120,
            child: GlowingOverscrollIndicator(
              axisDirection: AxisDirection.right,
              color: AppColors.primaryColor,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cast.length,
                itemExtent: 120,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CustomCachedImage(
                          imageUrl: ConstantStrings.imageBaseUrl +
                              ConstantStrings.profileSizes[1] +
                              (cast[index].profilePath),
                          height: 90,
                          circlar: true,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        cast[index].name,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        cast[index].character,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          castFaild: (message) => Text(
            message,
            textAlign: TextAlign.center,
          ),
          orElse: () => const Center(
            child: Text(
              'error',
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
