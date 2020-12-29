import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';
import 'background_card.dart';
import 'bottom_btn.dart';
import 'bmi_calculator.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                  'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex:5,
              child: BackgroundCard(
                colour: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        resultText,
                        style: kResultTextStyle,
                    ),
                    Text(
                        bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kSuggestionTextStyle,
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
          ),
          Expanded(
            child: BottomBtn(
              btnText: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            )
          )
        ],
      )
    );
  }
}
