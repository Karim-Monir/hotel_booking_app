import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Waiting.....",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.sp),)
          ],
        ),
      ),
    );
  }
}
