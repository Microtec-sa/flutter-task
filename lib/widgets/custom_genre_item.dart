import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/screens/movie_details.dart';
import 'package:movies/utils/constants.dart';

class CustomGenreItem extends StatelessWidget {
  const CustomGenreItem({
    super.key,
    required this.widget, required this.index,
  });

  final MovieDetails widget;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 29,
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      // margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffFD9803),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        '${GENRES[widget.movieModel.genre![index]]}',
        style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
    );
  }
}