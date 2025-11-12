import 'package:bmi_app/color.dart';
import 'package:bmi_app/screens/result_screen.dart';
import 'package:bmi_app/widgets/calculate_bmi.dart';
import 'package:bmi_app/widgets/custom_appbar_widget.dart';
import 'package:bmi_app/widgets/custom_gender_container_widget.dart';
import 'package:bmi_app/widgets/floating_action_button_widget.dart';
import 'package:bmi_app/widgets/material_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double height = 150;
  int age = 20;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 20,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  CustomGenderContainerWidget(
                    pathImage: 'assetes/icons/male_icon.png',
                    gender: 'male',
                    isSelcted: isMale,
                    onTap: () {
                      isMale = true;
                      setState(() {});
                    },
                  ),
                  CustomGenderContainerWidget(
                    pathImage: 'assetes/icons/female_icon.png',
                    gender: 'female',
                    isSelcted: !isMale,
                    onTap: () {
                      isMale = false;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'height',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                    Text.rich(
                      style: TextStyle(),
                      TextSpan(
                        children: [
                          TextSpan(
                            text: height.round().toString(),
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'cm',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      value: height,
                      max: 200,
                      min: 20,
                      activeColor: Color(0xffE83D67),
                      inactiveColor: Color(0xffFFFFFF),
                      onChanged: (value) {
                        height = value;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: unActiveColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'weight',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff8B8C9E),
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),
                            ),
                          ),

                          FloatingActionButtonWidget(
                            iconData1: Icons.remove,
                            iconData2: Icons.add,
                            addOnPressed: () {
                              if (weight < 250) {
                                weight++;
                                setState(() {});
                              }
                            },
                            removeOnPressed: () {
                              if (weight > 3) {
                                weight--;
                                setState(() {});
                              }
                            },
                            heroTag1: 1,
                            heroTag2: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: unActiveColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'age',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff8B8C9E),
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),
                            ),
                          ),

                          FloatingActionButtonWidget(
                            iconData1: Icons.remove,
                            iconData2: Icons.add,
                            addOnPressed: () {
                              if (age < 150) {
                                age++;
                                setState(() {});
                              }
                            },
                            removeOnPressed: () {
                              if (age > 0) {
                                age--;
                                setState(() {});
                              }
                            },
                            heroTag1: 3,
                            heroTag2: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButtonWidget(
        title: 'Calculate',
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(
            ResultScreen.routeName,
            arguments: CalcluateBMI(
              age: age,
              height: height,
              isMale: isMale,
              weight: weight,
            ),
          );
        },
      ),
    );
  }
}

