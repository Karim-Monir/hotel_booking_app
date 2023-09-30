import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/home/widget/default_search.dart';
import 'package:hotel_booking_app/view/home/widget/hotel_item.dart';
import 'package:hotel_booking_app/view/home/hotel_screen.dart';

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
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined,
                color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, bottom: 10),
          child: Column(children: [
            // Row(
            //   children: [
            //     Container(
            //         width: 278.w,
            //         height: 50.h,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           boxShadow: const [AppConst.defaultBoxShadow],
            //           color: Colors.white,
            //         ),
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //               border: InputBorder.none,
            //               prefixIcon: Icon(Icons.search, color: Colors.black),
            //               hintText: 'Search',
            //               hintStyle: TextStyle(
            //                 color: Colors.grey,
            //               )),
            //         )),
            //     SizedBox(
            //       width: 10.w,
            //     ),
            //     Container(
            //       width: 50.w,
            //       height: 50.h,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(10),
            //         boxShadow: const [AppConst.defaultBoxShadow],
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Image.asset(
            //           'assets/images/setting.PNG',
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const DefaultSearch(),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                const Image(image: AssetImage("assets/images/map.png")),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Maadi Street 73",
                  style: TextStyle(fontSize: 15.sp),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 240.h,
                width: 400.w,
                child: CarouselSliderDemo(
                  img1: 'assets/images/MaskGroup.png',
                  img2: 'assets/images/MaskGroup.png',
                  img3: 'assets/images/MaskGroup.png',
                  img4: 'assets/images/MaskGroup.png',
                )),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "El Gouna hotel",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Offer30%",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color.fromRGBO(255, 115, 29, 1)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 115, 29, 100),
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text("Top Destinations",
                    style: TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            // hotel item
            SizedBox(
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const HotelScreen();
                            },
                          ));
                        },
                        child: const HotelItem());
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
