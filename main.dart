import 'package:flutter/material.dart';
import 'SCREENS/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme:ThemeData.dark().copyWith(primaryColor:Color(0xFF3A4044),
      scaffoldBackgroundColor: Color(0xFF3A4044),),
   
      home: InputPage(),
    );
  }
}

