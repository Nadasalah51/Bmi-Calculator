import 'package:bmi_app/screens/home_screen.dart';
import 'package:bmi_app/widgets/calculate_bmi.dart';
import 'package:bmi_app/widgets/custom_appbar_widget.dart';
import 'package:bmi_app/widgets/material_button_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});
  static const String routeName = 'ResultScreen';

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as CalcluateBMI;
    return Scaffold(
      appBar: CustomAppBarWidget(),
      backgroundColor: Color(0xff1C2135),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFFFFF),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      arg.resultBmi,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: arg.categoryColor,
                      ),
                    ),
                    SizedBox(height: 33),
                    Text(
                      arg.calculateBMI.round().toString(),
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      arg.healthAdvice,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: MaterialButtonWidget(
        title: 'Re - Calculate',
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        },
      ),
    );
  }
}
