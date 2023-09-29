import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_booking_app/utils/constant.dart';
import 'package:hotel_booking_app/view/auth/login_screen.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_button.dart';
import 'package:hotel_booking_app/view/auth/widgets/custom_text_formFeild.dart';
import 'package:hotel_booking_app/view/auth/widgets/or_text_widget.dart';
import 'package:hotel_booking_app/view/auth/widgets/row_auth.dart';
import 'package:hotel_booking_app/view/home/layout.dart';
import 'package:iconly/iconly.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPasswordVisible = true;
  bool ConfiremIsvisible = true;
  bool isLoading = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
            child: ModalProgressHUD(
              inAsyncCall: isLoading,
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
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back)),
                      SizedBox(
                        height: 70.h,
                      ),
                      defultWidgets(
                        text: "Create Account",
                      ),
                      SizedBox(
                        height: 26.h,
                      ),
                      Column(
                        children: [
                          CustomTextFormFeild(
                            isPasswordVisible: false,
                            controller: nameController,
                            hintText: "Name",
                            keyboardType: TextInputType.text,
                            nameOfTextFormFeild: "name",
                            prefixIcon: const Icon(IconlyLight.profile),
                            value: nameController.text,
                          ),
                          SizedBox(
                            height: 23.h,
                          ),
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
                                    isPasswordVisible =
                                        !isPasswordVisible; // تعديل هنا
                                  });
                                },
                                icon: isPasswordVisible
                                    ? const Icon(Icons.visibility_off_outlined)
                                    : const Icon(Icons.remove_red_eye_outlined),
                              )),
                          SizedBox(
                            height: 23.h,
                          ),
                          CustomTextFormFeild(
                              isPasswordVisible: ConfiremIsvisible,
                              controller: confirmPasswordController,
                              hintText: "Confirm Password",
                              keyboardType: TextInputType.visiblePassword,
                              nameOfTextFormFeild: "Password",
                              prefixIcon: const Icon(Icons.lock_outline),
                              value: confirmPasswordController.text,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ConfiremIsvisible = !ConfiremIsvisible;
                                  });
                                },
                                icon: ConfiremIsvisible
                                    ? const Icon(Icons.visibility_off_outlined)
                                    : const Icon(Icons.remove_red_eye_outlined),
                              )),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomButton(
                            text: "Sign Up",
                            onPreesed: () {
                              if (formKey.currentState!.validate()) {
                                isLoading = true;
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginScreen();
                                  },
                                ));
                              }
                            },
                            textWhite: true,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const OrTextWidget(),
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
            ),
          )
        ],
      ),
    );
  }
}
