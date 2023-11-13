import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageNotFoundWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final double iconSize;
  final double textFontSize;
  final bool borderRadiusBottomEnabled;
  const ImageNotFoundWidget({
    super.key,
    this.width,
    this.height,
    required this.iconSize,
    required this.textFontSize,
    required this.borderRadiusBottomEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadiusBottomEnabled
            ? BorderRadius.circular(20)
            : const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
        color: Colors.grey[300],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.movie_outlined, size: iconSize),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Image Not Found',
            style: TextStyle(
              fontSize: textFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
