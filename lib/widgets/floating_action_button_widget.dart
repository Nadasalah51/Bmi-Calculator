import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final IconData iconData1;
  final IconData iconData2;
  final int heroTag1;
  final int heroTag2;
  final void Function()? addOnPressed;
  final void Function()? removeOnPressed;
  const FloatingActionButtonWidget({
    super.key,
    required this.iconData1,
    required this.iconData2,
    required this.heroTag1,
    required this.heroTag2,
    this.addOnPressed,
    this.removeOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: removeOnPressed,
          shape: CircleBorder(),
          backgroundColor: Color(0xff8B8C9E),
          mini: true,
          heroTag: heroTag1,
          child: Icon(
            iconData1,
            size: 32,
            weight: 600,
            color: Color(0xffFFFFFF),
          ),
        ),
        FloatingActionButton(
          onPressed: addOnPressed,
          shape: CircleBorder(),
          backgroundColor: Color(0xff8B8C9E),
          mini: true,
          heroTag: heroTag2,
          child: Icon(
            iconData2,
            size: 32,
            weight: 600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ],
    );
  }
}
