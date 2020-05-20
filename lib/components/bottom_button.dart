import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonTitle, @required this.onTapped});

  final String buttonTitle;
  final Function onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
