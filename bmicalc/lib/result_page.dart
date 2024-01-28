// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:bmicalc/inputpage.dart';
import 'package:bmicalc/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmiText;
  final String interpretation;

  ResultPage(
      {required this.resultText,
      required this.bmiText,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: numberStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: resusableCard(
                colour: Color(inactiveCardcolour),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                    Text(
                      bmiText,
                      style:
                          TextStyle(fontSize: 100,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ButtomButton(
              onpressed: () {
                Navigator.pop(context);
              },
              mytext: "RE-CALCULATE",
            ),
          ],
        ),
      ),
    );
  }
}
