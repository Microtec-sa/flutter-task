import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/Features/Movie/data/models/cast_model.dart';
import 'package:movies/Features/Movie/data/models/movie_model.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/cast_cubit/cast_cubit.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/cast_cubit/cast_state.dart';
import 'package:movies/Features/Movie/presentation/widgets/custom_cast_item.dart';
import 'package:movies/core/utils/color_manager.dart';
import 'package:movies/core/utils/constants.dart';

import '../widgets/image_not_found_widget.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CastCubit>(context).getCast(id: widget.movieModel.id!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350.h,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: widget.movieModel.id!,
                    child: FancyShimmerImage(
                      boxFit: BoxFit.fill,
                      imageUrl:
                          "${Constants.movieImgBaseUrl}/w200/${widget.movieModel.posterPath}",
                      errorWidget: ImageNotFoundWidget(
                        width: MediaQuery.of(context).size.width,
                        height: 350.h,
                        iconSize: 60.r,
                        textFontSize: 28.sp,
                        borderRadiusBottomEnabled: true,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.primaryColor,
                    ),
                    padding: const EdgeInsets.all(7),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.play_arrow,
                        size: 35,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 80.h,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 36.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "${widget.movieModel.title}",
                        style: TextStyle(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        // softWrap: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Flexible(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: widget.movieModel.genre?.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 29,
                            ),
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorManager.primaryColor,
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            child: Text(
                              '${Constants.genres[widget.movieModel.genre![index]]}',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.movieModel.overview!.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Synopsis",
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : const Text(''),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "${widget.movieModel.overview}",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(.6)),
                    softWrap: true,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                BlocBuilder<CastCubit, CastState>(
                  builder: (context, state) {
                    if (state is CastInitial) {
                      return const Center(child: Text(''));
                    } else if (state is CastLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is CastSuccess) {
                      List<CastModel?> casts = state.cast!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.cast!.isNotEmpty
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    "Cast",
                                    style: TextStyle(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              : const Text(''),
                          Container(
                            height: 200.h,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: casts.length,
                                itemBuilder: (context, index) {
                                  return CustomCastItem(
                                    casts: casts,
                                    movieImgBaseUrl: Constants.movieImgBaseUrl,
                                    index: index,
                                  );
                                }),
                          ),
                        ],
                      );
                    } else if (state is CastFailed) {
                      return Center(child: Text(state.errorMessage));
                    }
                    {
                      return Text(
                        'Loading Failed!',
                        style: TextStyle(fontSize: 18.sp),
                      );
                    }
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
