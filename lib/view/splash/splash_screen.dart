import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/view/splash/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF731D),
              Color.fromARGB(255, 255, 158, 85),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 85.h,
                width: 132.w,
                child: SvgPicture.asset("assets/images/logo.svg"),
              ),
              Positioned(
                  bottom: 10,
                  child: SvgPicture.asset("assets/images/BOOKING.svg"))
            ],
          ),
        ),
      ),
    );
  }

  void goToNextPage() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const WelcomeScreen();
        },
      ));
    });
  }
}
