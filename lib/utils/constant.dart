import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConst {
  static Color KmainColor = const Color(0xffFF731D);
}

Widget defultWidgets({required String text}) => Text(
      text,
      style: TextStyle(
        fontFamily: "Inter",
        fontSize: 32.sp,
        fontWeight: FontWeight.w800,
        color: const Color(0xff000000),
      ),
    );
