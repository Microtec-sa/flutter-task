import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/movie_cubit/movie_cubit.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/movie_cubit/movie_state.dart';
import 'package:movies/Features/Movie/presentation/widgets/custom_movie_item.dart';
import 'package:movies/Features/Movie/presentation/widgets/custom_text_field_widget.dart';
import 'package:movies/core/utils/color_manager.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorManager.backgroundColor,
        body: Container(
          padding:
              const EdgeInsets.only(top: 45, right: 15, left: 15, bottom: 8),
          child: Column(
            children: [
              CustomTextFieldWidget(),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: BlocBuilder<MoviesCubit, MoviesState>(
                    builder: (context, state) {
                  if (state is MoviesInitial) {
                    return Center(
                      child: Text(
                        'Search Movies',
                        style: TextStyle(fontSize: 28.sp),
                      ),
                    );
                  } else if (state is MoviesLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is MoviesSuccess) {
                    return LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double itemWidth = 160.w;
                        int columns =
                            (constraints.maxWidth / itemWidth).floor();
                        return GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columns,
                              mainAxisSpacing: 14.h,
                              crossAxisSpacing: 5.w,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width >= 1100
                                      ? 1.0.r
                                      : .8.r,
                            ),
                            itemCount: state.movies.length,
                            // physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return CustomMovieItem(
                                  movieModel: state.movies[index]);
                            });
                      },
                    );
                  } else if (state is MoviesFailed) {
                    return Center(child: Text(state.errorMessage));
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
              ),
            ],
          ),
        ));
  }
}
