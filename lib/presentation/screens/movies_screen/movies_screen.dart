import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/constants/colors.dart';
import 'package:movies_app/presentation/screens/movies_screen/components/movie_card.dart';

import '../../../business_logic/bloc/movie/movie_bloc.dart';
import '../../../data/models/movie.dart';
import 'components/container_wrapper.dart';

/// Shows all characters
class MoviesScreen extends StatelessWidget {
  /// Character Screen
  const MoviesScreen({super.key});

  void refresh(BuildContext context) {
    context.read<MovieBloc>().add(const Fetch());
  }

  void search(BuildContext context, String query) {
    context.read<MovieBloc>().query = query;
    if (query != '') {
      context.read<MovieBloc>().add(const Search());
    } else {
      context.read<MovieBloc>().add(const Fetch());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Discover',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                ),
              ),
              onSubmitted: (value) => search(context, value),
              onChanged: (value) {
                if (value == '') search(context, value);
              },
            ),
            const SizedBox(height: 5),
            Expanded(
              child: BlocBuilder<MovieBloc, MovieState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    movieLoadInProgress: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    movieFetched: (movies) => DiscoverLayout(
                      movies: movies,
                    ),
                    movieSearchFetched: (movies) => DiscoverLayout(
                      movies: movies,
                    ),
                    movieEndOfList: (movies) => DiscoverLayout(
                      movies: movies,
                      endOfList: true,
                    ),
                    movieFaild: (e) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e,
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                            onPressed: () => refresh(context),
                            child: const Text('Refresh'),
                          ),
                        ],
                      ),
                    ),
                    orElse: () => const Center(
                      child: Text(
                        'error',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        context.read<MovieBloc>().state.mapOrNull(
              movieFetched: (movies) =>
                  context.read<MovieBloc>().add(const FetchMore()),
              movieSearchFetched: (movies) =>
                  context.read<MovieBloc>().add(const SearchMore()),
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
    const aspectRatio = 0.55;
    return GlowingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      color: AppColors.primaryColor,
      child: GridView.builder(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(vertical: 20),
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
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
        },
      ),
    );
  }
}
