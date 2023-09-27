import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/utils/constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      required this.onPreesed,
      required this.textWhite});
  String text;
  VoidCallback onPreesed;
  bool textWhite = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppConst.KmainColor,
      ),
      child: MaterialButton(
          onPressed: onPreesed,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textWhite ? Colors.white : const Color(0xff000000),
            ),
          )),
    );
  }
}
