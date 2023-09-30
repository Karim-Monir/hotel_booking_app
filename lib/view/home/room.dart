import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/view/home/room%20details.dart';
import 'package:iconly/iconly.dart';

import 'carousel slider.dart';


class RoomBuilder extends StatefulWidget {
  String photoPath;
  String rate;
  String cost;
  String title;

  RoomBuilder({super.key, required this.photoPath, required this.rate, required this.cost, required this.title});



  @override
  State<RoomBuilder> createState() => _RoomBuilderState();
}

class _RoomBuilderState extends State<RoomBuilder> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  roomDetails(photoPath: widget.photoPath,rate: widget.rate,)),
        );
      },
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 240.h,
                width: 400.w,
                child: CarouselSliderDemo(img1:widget.photoPath, img2: widget.photoPath,
                  img3: widget.photoPath, img4: widget.photoPath,)),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title, style: TextStyle(fontSize: 16.sp),),
                    SizedBox(height: 6.h,),
                    Text(widget.cost, style: TextStyle(fontSize: 18.sp,color: const Color.fromRGBO(255, 115, 29, 1)),),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star,color: Color.fromRGBO(255, 115, 29, 100) ,),
                    Text(widget.rate, style: TextStyle(fontSize: 15.sp),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}