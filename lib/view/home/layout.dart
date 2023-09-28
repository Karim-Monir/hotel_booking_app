import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/view/home/profile.dart';
import 'package:hotel_booking_app/view/home/search.dart';

import 'favorite.dart';
import 'home.dart';
import 'list.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = [
    homeScreen(),
    searchScreen(),
    listScreen(),
    favoriteScreen(),
    profileScreen()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(18.0),
          topLeft: Radius.circular(18.0),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, -2),
                spreadRadius: 0,
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 115, 29, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 36.0.h,
                  width: 36.0.w,
                  child: Icon(Icons.home, color: Colors.black),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 115, 29, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 36.0.h,
                  width: 36.0.w,
                  child: Icon(Icons.search, color: Colors.black),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined),
                label: "",
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 115, 29, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 36.0.h,
                  width: 36.0.w,
                  child: Icon(Icons.list_alt_outlined, color: Colors.black),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "",
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 115, 29, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 36.0.h,
                  width: 36.0.w,
                  child: Icon(Icons.favorite_border, color: Colors.black),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
                label: "",
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 115, 29, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 36.0.h,
                  width: 36.0.w,
                  child: CircleAvatar(
                    foregroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ],
            unselectedItemColor: Colors.black,
            iconSize: 30.0,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}