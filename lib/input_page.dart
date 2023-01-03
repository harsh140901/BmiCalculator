import 'package:bmicalculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'Reusable_Card.dart';
import 'constants.dart';
import 'result_page.dart';
import 'Bottombutton.dart';
import 'RoundButton.dart';
import 'Calculation.dart';
enum GenderType {male,female}

// Input Page of BMI Calculator
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType? selectedgender ;
  int height = 150;
  int weight = 50;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedgender = GenderType.male;
                        });
                      },
                      colour: selectedgender == GenderType.male ? kActiveCardColor : kInactiveCardColor,
                      cardChild: IconContent(
                        icon:FontAwesomeIcons.mars ,
                        label: 'MALE',),

                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedgender = GenderType.female;
                      });
                    },
                    colour: selectedgender==GenderType.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',),
              ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextstyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble() ,
                          min: 100.0,
                          max: 200.0,
                          onChanged:(double newValue){
                            setState(() {
                              height = newValue.toInt();
                            });
                          },
                      )
                    ],
                  )
                  ),
                  ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline:TextBaseline.alphabetic,
                          children: [
                          Text(
                            weight.toString(),
                            style: kNumberTextstyle,
                          ),
                          Text(
                            'kg',
                            style: kLabelTextStyle,
                          )
                          ]
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              ontap: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              ontap: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                      ),
                 ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline:TextBaseline.alphabetic,
                          children:[
                          Text(
                            age.toString(),
                            style: kNumberTextstyle,
                          ),
                          Text(
                            'yr',
                            style: kLabelTextStyle ,
                          ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                ontap: (){
                                  setState(() {
                                    age--;
                                  });
                                }
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                ontap:(){
                                  setState(() {
                                    age++;
                                  });
                                }
                            ),
                          ],
                        ),
                      ],
                    ),
                 ),
                ),
              ],
            ),
          ),
          BottomButton(Buttintitle: 'CALCULATE',ontap: (){
            Calculation calc = Calculation(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                bmiResult: calc.getResult(),
                ResultText: calc.Calculate(),
                Interpretation: calc.getInterpretation(),
            )));
          },),
        ],
      ),
    );
  }
}





