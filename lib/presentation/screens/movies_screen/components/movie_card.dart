import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/stings.dart';
import '../../../../data/models/movie.dart';
import '../../../widgets/custom_cached_image.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: CustomCachedImage(
        imageUrl: ConstantStrings.imageBaseUrl +
            ConstantStrings.imageSizes[4] +
            movie.posterPath,
        height: 15,
      ),
    );
  }
}
