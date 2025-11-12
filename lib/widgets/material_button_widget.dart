import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const MaterialButtonWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      color: Color(0xffE83D67),
      minWidth: double.infinity,
      height: 100,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
