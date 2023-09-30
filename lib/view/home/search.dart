import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/home/home.dart';
import 'package:hotel_booking_app/view/home/room%20details.dart';
import 'package:hotel_booking_app/view/home/room.dart';
import 'package:hotel_booking_app/view/home/widget/default_search.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  List<String> rooms = [
    'assets/images/room1.png',
    'assets/images/room2.png',
    'assets/images/room3.png',
    'assets/images/room4.png'
  ];
  List<String> rates = ['4.8', '4.0', '4.1', '3.9'];
  List<String> titles = [
    'Suite Room 70 m\u00b2',
    'Room 30 m\u00b2',
    'Twin Room 80 m\u00b2',
    'Room 20 m\u00b2'
  ];
  List<String> costs = [
    '\$420 / 2  night',
    '\$300 / 4  night',
    '\$540 / 4  night',
    '\$120 / 3 night'
  ];

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
          child: Column(
            children: [
              const DefaultSearch(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "38 ",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: const Color.fromRGBO(255, 115, 29, 1)),
                  ),
                  Text(
                    "Options ",
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 540.h,
                child: ListView.separated(
                    itemCount: rooms.length,
                    separatorBuilder: (context, index) => SizedBox(
                          height: 50.h,
                        ),
                    itemBuilder: (context, index) {
                      return RoomBuilder(
                        photoPath: rooms[index],
                        title: titles[index],
                        rate: rates[index],
                        cost: costs[index],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
