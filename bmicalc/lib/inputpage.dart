// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, empty_constructor_bodies, prefer_const_constructors_in_immutables

import 'package:bmicalc/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'cardData.dart';
import 'constant.dart';
import 'calculate.dart';

enum GenderType {
  male,
  female,
}

class inputpage extends StatefulWidget {
  const inputpage({super.key});

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  Color maleCardcolour = Color(inactiveCardcolour);
  Color femaleCardcolour = Color(inactiveCardcolour);

  int height = 180;
  int weight = 60;
  int age = 25;

  void changeCardcolour(GenderType selectedGender) {
    if (selectedGender == GenderType.male) {
      if (maleCardcolour == Color(inactiveCardcolour)) {
        femaleCardcolour = Color(inactiveCardcolour);
        maleCardcolour = Color(activeCardcolour);
      } else {
        maleCardcolour = Color(inactiveCardcolour);
      }
    } else if (selectedGender == GenderType.female) {
      if (femaleCardcolour == Color(inactiveCardcolour)) {
        maleCardcolour = Color(inactiveCardcolour);
        femaleCardcolour = Color(activeCardcolour);
      } else {
        femaleCardcolour = Color(inactiveCardcolour);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: resusableCard(
                      onpressed: () {
                        setState(() {
                          changeCardcolour(GenderType.male);
                        });
                      },
                      cardChild: iconCard(
                        gender: "MALE",
                        myIcon: FontAwesomeIcons.mars,
                      ),
                      colour: maleCardcolour,
                    ),
                  ),
                  Expanded(
                    child: resusableCard(
                      onpressed: () {
                        setState(() {
                          changeCardcolour(GenderType.female);
                        });
                      },
                      cardChild: iconCard(
                        gender: "FEMALE",
                        myIcon: FontAwesomeIcons.venus,
                      ),
                      colour: femaleCardcolour,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: resusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: labelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: numberStyle,
                        ),
                        Text(
                          "cm",
                          style: labelStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTickMarkColor: Colors.white,
                        inactiveTickMarkColor: Color(0xff8d8e98),
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 100,
                          max: 220,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          }),
                    )
                  ],
                ),
                colour: Color(activeCardcolour),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: resusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: labelStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedActionButton(
                                onpress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                buttonIcon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedActionButton(
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                buttonIcon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: Color(activeCardcolour),
                    ),
                  ),
                  Expanded(
                    child: resusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: labelStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedActionButton(
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                buttonIcon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedActionButton(
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                buttonIcon: FontAwesomeIcons.plus,
                              ),
                            ],
                          )
                        ],
                      ),
                      colour: Color(activeCardcolour),
                    ),
                  ),
                ],
              ),
            ),
            ButtomButton(
              onpressed: () {
                CalculatorBrain mybmi =
                    CalculatorBrain(bmiheight: height, bmiweight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiText: mybmi.calcuateBmi(),
                      resultText: mybmi.getResult(),
                      interpretation: mybmi.getInterpretation(),
                    ),
                  ),
                );
              },
              mytext: "CALCULATE",
            )
          ],
        ),
      ),
    );
  }
}

class RoundedActionButton extends StatelessWidget {
  final IconData? buttonIcon;
  final VoidCallback? onpress;
  RoundedActionButton({this.buttonIcon, this.onpress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      elevation: 6.0,
      fillColor: Color(0xff4c4f5e),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      child: Icon(
        buttonIcon,
      ),
    );
  }
}

class ButtomButton extends StatelessWidget {
  final VoidCallback? onpressed;
  final String? mytext;
  ButtomButton({this.onpressed, this.mytext});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
     onTap: onpressed,
        child: Container(
          color: Color(buttonContainercolour),
          margin: EdgeInsets.only(top: 10),
          child: Center(
              child: Text(
            mytext!,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
