import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/auth/forget_password_screen.dart';
import 'package:hotel_booking_app/view/auth/register_screen.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_button.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_text_formFeild.dart';
import 'package:hotel_booking_app/view/auth/widgets/row_auth.dart';
import 'package:hotel_booking_app/view/splash/welcome_screen.dart';

import '../home/layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  bool isPasswordVisible = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
        SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const RegisterScreen();
                          },
                        ));
                      },
                      child: const Icon(Icons.arrow_back)),
                  SizedBox(
                    height: 130.h,
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Column(
                    children: [
                      CustomTextFormFeild(
                        isPasswordVisible: false,
                        controller: emailController,
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        nameOfTextFormFeild: "email",
                        prefixIcon: const Icon(Icons.email_outlined),
                        value: emailController.text,
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      CustomTextFormFeild(
                          isPasswordVisible: isPasswordVisible,
                          controller: passwordController,
                          hintText: "Password",
                          keyboardType: TextInputType.visiblePassword,
                          nameOfTextFormFeild: "password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          value: passwordController.text,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            icon: isPasswordVisible
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.remove_red_eye_outlined),
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ForgetPasswordScreen();
                                },
                              ));
                            },
                            child: const Text(
                              "forget password?",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                                height: 19 / 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        text: "Sign in",
                        onPreesed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return  HomeLayout();
                              },
                            ));
                          }
                        },
                        textWhite: true,
                      ),
                      SizedBox(
                        height: 10.h,
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
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
