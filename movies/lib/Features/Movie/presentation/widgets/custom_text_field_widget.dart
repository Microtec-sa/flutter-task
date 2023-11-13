import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/Features/Movie/presentation/manager/cubit/movie_cubit/movie_cubit.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String? title;
  CustomTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        title = data;
        if (title != null) {
          BlocProvider.of<MoviesCubit>(context).getMovies(title: title!);
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        suffixIcon: Icon(
          Icons.search,
          size: 25.sp,
        ),
        hintText: 'Search Movie',
        hintStyle: TextStyle(fontSize: 28.sp),
      ),
      style: TextStyle(fontSize: 28.sp),
    );
  }
}
