import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class listScreen extends StatelessWidget {
  const listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Text(
              "watting please until ui/ux\nfinished it.....",
              style: TextStyle(color: Colors.black38, fontSize: 22.sp),
            ),
          ),
        ),
      ),
    );
  }
}
