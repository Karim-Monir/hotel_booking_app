import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/auth/login_screen.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_button.dart';
import 'package:hotel_booking_app/view/auth/widgets/scond_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  String Phone = "";
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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 70.h,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ));
                  },
                  child: const Icon(Icons.arrow_back)),
              SizedBox(
                height: 130.h,
              ),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 52.h,
              ),
              Container(
                  height: 48.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffFF731D))),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (newValue) {
                      Phone = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your phone or email";
                      }
                      return null;
                    },
                    cursorColor: AppConst.KmainColor,
                    decoration: InputDecoration(
                        suffixIconColor: AppConst.KmainColor,
                        prefixIconColor: Colors.black,
                        hintText: "   Email or phone",
                        hintStyle: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff1f1f1f),
                        ),
                        border: InputBorder.none),
                  )),
              SizedBox(
                height: 23.h,
              ),
              CustomButton(text: "Send", onPreesed: () {}, textWhite: true)
            ]),
          )
        ],
      ),
    );
  }
}
