import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondButton extends StatelessWidget {
  SecondButton({super.key, required this.onTap, required this.text});
  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 327.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffFF731D))),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff000000),
              height: 24 / 20,
            ),
          ),
        ),
      ),
    );
  }
}
