import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/cubit/movieState.dart';
import 'package:movies/cubit/movie_cubit.dart';
import 'package:movies/widgets/custom_movie_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String? title;
  List? movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding:
              const EdgeInsets.only(top: 45, right: 15, left: 15, bottom: 8),
          child: Column(
            children: [
              TextField(
                onChanged: (data) async {
                  title = data;
                  if (title != null) {
                    BlocProvider.of<MoviesCubit>(context)
                        .getMovies(title: title!);
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 25.sp,
                  ),
                  hintText: 'Search Movie',
                  hintStyle: TextStyle(fontSize: 19.sp),
                ),
                style: TextStyle(fontSize: 19.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              BlocBuilder<MoviesCubit, MoviesState>(builder: (context, state) {
                if (state is MoviesInitial) {
                  return Padding(
                    padding: EdgeInsets.only(top: 250.h),
                    child: Center(
                      child: Text(
                        'Search Movies',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                  );
                } else if (state is MoviesLoading) {
                  return Padding(
                    padding: EdgeInsets.only(top: 250.h),
                    child: const Center(child: CircularProgressIndicator()),
                  );
                } else if (state is MoviesSuccess) {
                  return Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double itemWidth = 112.w;
                        int columns =
                            (constraints.maxWidth / itemWidth).floor();
                        return GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columns,
                              mainAxisSpacing: 14.h,
                              crossAxisSpacing: 5.w,
                              childAspectRatio: .6,
                            ),
                            itemCount: state.movies.length,
                            // physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return CustomMovieItem(
                                  movieModel: state.movies[index]);
                            });
                      },
                    ),
                  );
                } else if (state is MoviesFailed) {
                  return Padding(
                    padding: EdgeInsets.only(top: 250.h),
                    child: Center(child: Text(state.exp)),
                  );
                } else {
                  return Center(
                    child: Text(
                      'Failed fetching data',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  );
                }
              }),
            ],
          ),
        ));
  }
}
