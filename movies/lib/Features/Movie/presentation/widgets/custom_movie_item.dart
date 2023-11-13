import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/Features/Movie/data/models/movie_model.dart';
import 'package:movies/Features/Movie/presentation/screens/movie_details_screen.dart';
import 'package:movies/core/utils/color_manager.dart';
import 'package:movies/core/utils/constants.dart';

import 'image_not_found_widget.dart';

class CustomMovieItem extends StatefulWidget {
  const CustomMovieItem({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  State<CustomMovieItem> createState() => _CustomMovieItemState();
}

class _CustomMovieItemState extends State<CustomMovieItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieDetails(
                      movieModel: widget.movieModel,
                    )));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          side: BorderSide(color: Colors.black.withOpacity(.1)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * .05 + 180.h,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Hero(
                    tag: widget.movieModel.id!,
                    child: FancyShimmerImage(
                      boxFit: BoxFit.fill,
                      imageUrl:
                          "${Constants.movieImgBaseUrl}/w200${widget.movieModel.posterPath}",
                      errorWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ImageNotFoundWidget(
                                height: 195.h,
                                width: MediaQuery.of(context).size.width,
                                iconSize: 50.r,
                                textFontSize: 20.sp,
                                borderRadiusBottomEnabled: false,
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  height: 25.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                    color: ColorManager.voteAverageColor,
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star_rounded,
                                          color: Colors.white, size: 26.r),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        widget.movieModel.voteAverage
                                            .toString()
                                            .split('.')
                                            .first,
                                        style: TextStyle(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Text(
                                  '${widget.movieModel.title}',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.voteAverageColor,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rounded,
                            color: Colors.white, size: 26.sp),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          widget.movieModel.voteAverage
                              .toString()
                              .split('.')
                              .first,
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    '${widget.movieModel.title}',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
