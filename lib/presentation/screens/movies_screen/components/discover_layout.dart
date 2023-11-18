import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/constants/colors.dart';
import 'package:movies_app/presentation/screens/movies_screen/components/movie_card.dart';

import '../../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../../constants/helper.dart';
import '../../../../data/models/movie.dart';
import 'container_wrapper.dart';

class DiscoverLayout extends StatefulWidget {
  const DiscoverLayout({
    super.key,
    required this.movies,
    this.endOfList = false,
  });

  final List<Movie> movies;
  final bool endOfList;

  @override
  State<DiscoverLayout> createState() => _DiscoverLayoutState();
}

class _DiscoverLayoutState extends State<DiscoverLayout> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent - scrollController.offset ==
          0) {
        context.read<MovieBloc>().state.mapOrNull(
              movieFetched: (movies) => context.read<MovieBloc>().add(
                    const FetchMore(),
                  ),
              movieSearchFetched: (movies) => context.read<MovieBloc>().add(
                    const SearchMore(),
                  ),
              movieEndOfList: (value) => {},
            );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Log.debug(widget.movies.length);
    const aspectRatio = 0.55;
    final topPadding = MediaQuery.of(context).padding.top;
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return GlowingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      color: AppColors.primaryColor,
      child: GridView.builder(
        controller: scrollController,
        padding:
            EdgeInsets.only(top: topPadding + 55 + 5, bottom: bottomPadding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: aspectRatio,
        ),
        itemCount: widget.movies.length + 1,
        itemBuilder: (context, index) {
          return index < widget.movies.length
              ? ContainerWrapper(
                  movie: widget.movies[index],
                  closedCard: MovieCard(movie: widget.movies[index]),
                )
              : widget.endOfList
                  ? const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: Text(
                          'End of list',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: CircularProgressIndicator.adaptive(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.secondaryColor,
                          ),
                        ),
                      ),
                    );
        },
      ),
    );
  }
}
