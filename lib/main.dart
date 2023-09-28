import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/view/auth/forget_password_screen.dart';
import 'package:hotel_booking_app/view/auth/login_screen.dart';
import 'package:hotel_booking_app/view/auth/register_screen.dart';
import 'package:hotel_booking_app/view/auth/welcome_screen_auth.dart';
import 'package:hotel_booking_app/view/home/layout.dart';
import 'package:hotel_booking_app/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
