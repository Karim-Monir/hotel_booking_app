import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/auth/login_screen.dart';
import 'package:hotel_booking_app/view/auth/register_screen.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_button.dart';
import 'package:hotel_booking_app/view/auth/widgets/row_auth.dart';
import 'package:hotel_booking_app/view/auth/widgets/scond_button.dart';

class WelcomeScreenAuth extends StatelessWidget {
  const WelcomeScreenAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png")),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
            SizedBox(
              height: 115.h,
            ),
            Center(
                child: Column(
              children: [
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
                    height: 44 / 36,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                CustomButton(
                  text: "Create Acount",
                  onPreesed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const RegisterScreen();
                      },
                    ));
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                //scondButton
                SecondButton(
                    text: "Login",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ));
                    }),
                SizedBox(
                  height: 39.h,
                ),
                Row(
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
                ),
                SizedBox(
                  height: 20.h,
                ),
                const RowAuth()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
