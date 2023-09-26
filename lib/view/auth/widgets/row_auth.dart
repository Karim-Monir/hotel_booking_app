import 'package:flutter/material.dart';

class RowAuth extends StatelessWidget {
  const RowAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/images/facebook.png")),
        IconButton(
            onPressed: () {}, icon: Image.asset("assets/images/google.png")),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/icon_apple_.png")),
      ],
    );
  }
}
