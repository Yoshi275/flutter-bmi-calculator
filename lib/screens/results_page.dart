import 'file:///C:/Users/chery/Documents/Flutter%20Udemy%20Tutorial/bmi-calculator-flutter/lib/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.resultText, this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(interpretation,
                      textAlign: TextAlign.center, style: kBodyTextStyle)
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTapped: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
