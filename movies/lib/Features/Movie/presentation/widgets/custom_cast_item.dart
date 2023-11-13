import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/Features/Movie/data/models/cast_model.dart';

class CustomCastItem extends StatelessWidget {
  CustomCastItem({
    super.key,
    required this.casts,
    required this.movieImgBaseUrl,
    required this.index,
  });

  final List<CastModel?> casts;
  final String movieImgBaseUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(26)),
              side: BorderSide(color: Colors.black.withOpacity(.1)),
            ),
            child: Container(
              width: 120.w,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
              ),
              child: FancyShimmerImage(
                boxFit: BoxFit.fill,
                imageUrl: "$movieImgBaseUrl/w200/${casts[index]!.profilePath}",
                errorWidget: Container(
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/person_image.jpg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                        Colors.black26,
                        BlendMode.darken,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        casts[index]?.name != null
            ? Text(
                '${casts[index]?.name?.split(' ').first}',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
            : const Text(''),
        SizedBox(
          height: 5.h,
        ),
        casts[index]?.character != null
            ? Text(
                '${casts[index]?.character?.split(' ').first}',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black.withOpacity(.5),
                ),
              )
            : const Text(''),
      ],
    );
  }
}
