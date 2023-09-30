import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/auth/login_screen.dart';
import 'package:hotel_booking_app/view/auth/register_screen.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_button.dart';
import 'package:hotel_booking_app/view/auth/widgets/or_text_widget.dart';
import 'package:hotel_booking_app/view/auth/widgets/row_auth.dart';
import 'package:hotel_booking_app/view/auth/widgets/scond_button.dart';

class WelcomeScreenAuth extends StatefulWidget {
  const WelcomeScreenAuth({super.key});

  @override
  State<WelcomeScreenAuth> createState() => _WelcomeScreenAuthState();
}

class _WelcomeScreenAuthState extends State<WelcomeScreenAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
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
                defultWidgets(
                  text: "Welcome!",
                ),
                SizedBox(
                  height: 45.h,
                ),
                CustomButton(
                  textWhite: false,
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
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ));
                      });
                    }),
                SizedBox(
                  height: 39.h,
                ),
                const OrTextWidget(),
                SizedBox(
                  height: 20.h,
                ),
                const RowAuth()
              ],
            )),
          ],
        ),
      ],
    ));
  }
}
