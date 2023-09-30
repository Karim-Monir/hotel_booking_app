import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConst {
  static Color KmainColor = const Color(0xffFF731D);

  static const BoxShadow defaultBoxShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 0,
  );
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
