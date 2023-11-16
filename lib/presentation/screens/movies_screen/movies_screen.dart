import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/screens/movies_screen/components/movie_card.dart';

import '../../../business_logic/bloc/movie/movie_bloc.dart';
import 'components/container_wrapper.dart';

/// Shows all characters
class MoviesScreen extends StatefulWidget {
  /// Character Screen
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        //context.read<MovieBloc>().add(const FetchMore());
      }
    });
  }

  Future<void> refresh() async {
    context.read<MovieBloc>().add(const Fetch());
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        return state.maybeWhen(
          movieLoadInProgress: () => const Center(
            child: CircularProgressIndicator(),
          ),
          movieFetched: (movies) {
            const aspectRatio = 0.55;
            return GridView.builder(
              controller: scrollController,
              //cacheExtent: 10,
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: aspectRatio,
              ),
              itemCount: movies.length + 1,
              itemBuilder: (context, index) {
                return index < movies.length
                    ? ContainerWrapper(
                        movie: movies[index],
                        closedCard: MovieCard(movie: movies[index]),
                      )
                    : const Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      );
              },
            );
          },
          movieEndOfList: () => const Center(
            child: Text(
              'End of list',
              textAlign: TextAlign.center,
            ),
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
                  onPressed: refresh,
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
    );
  }
}
