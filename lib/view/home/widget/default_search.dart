import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/utils/constant.dart';

class DefaultSearch extends StatelessWidget {
  const DefaultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 272.w,
            height: 32.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [AppConst.defaultBoxShadow]),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            )),
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 44.w,
          height: 32.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [AppConst.defaultBoxShadow]),
          child: Image.asset(
            "assets/images/seeting1.png",
            height: 20.h,
            width: 20.w,
          ),
        ),
      ],
    );
  }
}
