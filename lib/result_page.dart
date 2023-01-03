import 'dart:ffi';

import 'package:bmicalculator/Bottombutton.dart';
import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'Reusable_Card.dart';
import 'input_page.dart';
import 'Calculation.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.ResultText,required this.Interpretation});
   String bmiResult;
   String ResultText;
   String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
              child:ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult,
                      style: kResultTextStyle,
                    ),
                    Text(
                      ResultText,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      Interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
          ),
          BottomButton(ontap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()),);
          }, Buttintitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
