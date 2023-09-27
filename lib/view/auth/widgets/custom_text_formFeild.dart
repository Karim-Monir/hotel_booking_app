import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking_app/utils/constant.dart';

class CustomTextFormFeild extends StatefulWidget {
  CustomTextFormFeild(
      {super.key,
      required this.hintText,
      required this.keyboardType,
      required this.nameOfTextFormFeild,
      required this.prefixIcon,
      required this.value,
      required this.controller,
      @required this.suffixIcon,
      required this.isPasswordVisible});
  Widget prefixIcon;
  String hintText;
  TextEditingController controller;
  Widget? suffixIcon;
  String value;
  TextInputType keyboardType;
  String nameOfTextFormFeild;
  bool isPasswordVisible = false;
  bool? passwordFeild = false;
  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48.h,
        width: 327.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xffFF731D))),
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          onSaved: (newValue) {
            widget.value = newValue!;
          },
          validator: (value) {
            if (value!.isEmpty) {
              return '${widget.nameOfTextFormFeild} must not be empty';
            }
            return null;
          },
          cursorColor: AppConst.KmainColor,
          obscureText: widget.isPasswordVisible,
          decoration: InputDecoration(
              suffixIconColor: AppConst.KmainColor,
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              prefixIconColor: Colors.black,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontFamily: "Inter",
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: const Color(0xff1f1f1f),
              ),
              border: InputBorder.none),
        ));
  }
}
