import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090C22),
        ),
        scaffoldBackgroundColor: Color(0xFF090C22),
        // Slider Theme
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor:  Color(0xFFEA1556),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF535362),
          overlayColor: Color(0x29EA1556),
          trackHeight: 1.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 11.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 27.0),
        ),
      ),
      home: InputPage(),
    );
  }
}

