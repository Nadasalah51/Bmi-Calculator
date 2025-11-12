import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
      centerTitle: true,
      title: Text(
        'Bmi Calclautor',
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      leading: Text(' '),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
