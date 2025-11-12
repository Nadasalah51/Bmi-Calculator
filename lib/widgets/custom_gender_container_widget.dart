import 'package:bmi_app/color.dart';
import 'package:flutter/material.dart';

class CustomGenderContainerWidget extends StatelessWidget {
  const CustomGenderContainerWidget({
    super.key,
    required this.pathImage,
    required this.gender,
    this.onTap,
    required this.isSelcted,
  });
  final String pathImage;
  final String gender;
  final bool isSelcted;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: isSelcted ? unActiveColor : activeColor,
          child: Column(
            children: [
              Image.asset(pathImage),
              Text(
                gender,
                style: TextStyle(
                  color: Color(0xff8B8C9E),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
