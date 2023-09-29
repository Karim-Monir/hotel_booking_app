import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_booking_app/utils/constant.dart';

class OrTextWidget extends StatelessWidget {
  const OrTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPicture.asset("assets/images/Line-7.svg"),
        ),
        Text(
          "or",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppConst.KmainColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPicture.asset("assets/images/Line-6.svg"),
        )
      ],
    );
  }
}
