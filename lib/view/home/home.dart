import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/view/splash/welcome_screen.dart';

import 'carousel slider.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon( Icons.notifications_active_outlined,color: Colors.black),onPressed: (){},),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
            bottom: 10
          ),
          child: Column(
            children: [
          Row(
          children: [
          Container(
          width: 278.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(-2, 0),
                    spreadRadius: 0,
                  )
                ],
                  color: Colors.white,
                  ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.black),
                    hintText: '',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              )),
          SizedBox(
            width: 10.w,
          ),
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 3,
                  offset: Offset(-3, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/setting.PNG',
              ),
            ),
          ),
          ],
    ),
              SizedBox(height: 20.h,),
            Row(
              children: [
                const Image(image: AssetImage("assets/images/map.png")),
                SizedBox(width: 10.w,),
                Text("Maadi Street 73",style: TextStyle(fontSize: 15.sp),)
              ],
            ),
              SizedBox(height: 20.h,),
              SizedBox(
                  height: 240.h,
                  width: 400.w,
                  child: CarouselSliderDemo(img1: 'assets/images/MaskGroup.png', img2: 'assets/images/MaskGroup.png', img3: 'assets/images/MaskGroup.png', img4: 'assets/images/MaskGroup.png',)),

              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("El Gouna hotel", style: TextStyle(fontSize: 16.sp),),
                      SizedBox(height: 6.h,),
                      Text("Offer30%", style: TextStyle(fontSize: 18.sp,color: const Color.fromRGBO(255, 115, 29, 1)),),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star,color: Color.fromRGBO(255, 115, 29, 100) ,),
                      Text("4.5", style: TextStyle(fontSize: 15.sp),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text("Top Destinations",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Image(image: AssetImage("assets/images/Mask group (1).png")),
                        SizedBox(height: 15.h,),
                        Text("Hotel In Aswan",style: TextStyle(fontSize: 18.sp),),
                        SizedBox(height: 10.h,),
                        Text("35 Hotel- Avg.\$ 80 ",style: TextStyle(fontSize: 15.sp,color: Colors.grey,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Image(image: AssetImage("assets/images/hotel.png")),
                        SizedBox(height: 15.h,),
                        Text("Hotel In Dahb",style: TextStyle(fontSize: 18.sp),),
                        SizedBox(height: 10.h,),
                        Text("24 Hotel- Avg.\$60  ",style: TextStyle(fontSize: 15.sp,color: Colors.grey,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
