import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: 250.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(image: AssetImage("assets/images/hotel.png")),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Hotel In Dahb",
            style: TextStyle(fontSize: 18.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "24 Hotel- Avg.\$60  ",
            style: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
