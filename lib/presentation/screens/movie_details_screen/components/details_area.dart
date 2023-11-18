import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/business_logic/bloc/movie/movie_bloc.dart';
import 'package:movies_app/presentation/screens/movie_details_screen/components/credits_list.dart';

import '../../../../business_logic/bloc/cast/cast_bloc.dart';

class DetailsArea extends StatelessWidget {
  const DetailsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final movie = context.read<MovieBloc>().currentlySelectedMovie;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          Text(
            movie!.overview,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 25),
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          BlocProvider(
            create: (context) => CastBloc()
              ..add(
                CastFetch(movie.id),
              ),
            child: const CreditsList(),
          )
        ],
      ),
    );
  }
}
