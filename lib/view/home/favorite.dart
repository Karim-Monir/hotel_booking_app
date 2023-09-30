import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
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
    ));
  }
}
