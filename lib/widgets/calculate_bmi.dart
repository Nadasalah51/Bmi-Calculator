import 'dart:math';
import 'dart:ui';

class CalcluateBMI {
  bool isMale;
  double height;
  int age;
  int weight;
  CalcluateBMI({
    required this.age,
    required this.height,
    required this.isMale,
    required this.weight,
  });
  double get calculateBMI => weight / pow(height / 100, 2);

  String get resultBmi {
    if (calculateBMI < 18.5) {
      return 'Underweight';
    } else if (calculateBMI < 25) {
      return 'Normal';
    } else if (calculateBMI < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color get categoryColor {
    switch (resultBmi) {
      case 'Underweight':
        return const Color(0xFF3F51B5);
      case 'Normal':
        return const Color(0xFF4CAF50);
      case 'Overweight':
        return const Color(0xFFFF9800);
      case 'Obese':
        return const Color(0xFFF44336);
      default:
        return const Color(0xFF9E9E9E);
    }
  }

  String get healthAdvice {
    switch (resultBmi) {
      case 'Underweight':
        return 'Consider consulting a healthcare provider about healthy weight gain strategies.';
      case 'Normal':
        return 'Great! Maintain your current lifestyle with balanced diet and regular exercise.';
      case 'Overweight':
        return 'Consider a balanced diet and increased physical activity to reach a healthier weight.';
      case 'Obese':
        return 'Consult with a healthcare provider for a personalized weight management plan.';
      default:
        return 'Consult with a healthcare provider for personalized advice.';
    }
  }
}
