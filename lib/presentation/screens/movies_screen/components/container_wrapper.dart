import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/screens/movie_details_screen/movie_details_screen.dart';

import '../../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../../data/models/movie.dart';

/// Container Wrapper for the transition of openning a container
class ContainerWrapper extends StatelessWidget {
  /// Opens a container
  const ContainerWrapper({
    required this.movie,
    required this.closedCard,
    super.key,
  });

  /// Character widget to display
  final Movie movie;

  /// Character Card Disblayed on close
  final Widget closedCard;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      useRootNavigator: true,
      openBuilder: (context2, closedContainer) {
        return BlocProvider.value(
          value: BlocProvider.of<MovieBloc>(context),
          child: const MovieDetailsScreen(),
        );
      },
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      closedColor: Colors.transparent,
      closedBuilder: (context, openContainer) {
        return InkWell(
          onTap: () {
            context.read<MovieBloc>().currentlySelectedMovie = movie;
            openContainer();
          },
          child: closedCard,
        );
      },
    );
  }
}
