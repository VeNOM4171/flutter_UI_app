import 'package:flutter/material.dart';
import 'constants.dart';

class BottomBtn extends StatelessWidget {
  BottomBtn({this.btnText, this.onPress});

  final String btnText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            btnText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kPinkishColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomBtnHeight,
        width: double.infinity,
      ),
    );
  }
}