import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sex_btn.dart';
import 'background_card.dart';
import 'constants.dart';
import 'round_icon_btn.dart';
import 'bottom_btn.dart';
import 'result_page.dart';
import 'bmi_calculator.dart';

enum GenderType { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 150;
  int weight = 56;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BackgroundCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.Male;
                        });
                      },
                      colour: selectedGender == GenderType.Male
                          ? kCardColor
                          : kInActiveCardColor,
                      cardChild:
                          SexBtn(sexIcon: FontAwesomeIcons.mars, sex: 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: BackgroundCard(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.Female;
                          });
                        },
                        colour: selectedGender == GenderType.Female
                            ? kCardColor
                            : kInActiveCardColor,
                        cardChild: SexBtn(
                            sexIcon: FontAwesomeIcons.venus, sex: 'FEMALE')),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BackgroundCard(
                colour: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kCardLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kMesurementTextStyle,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 2.0,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: kPinkishColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayColor: Color(0x29EB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: kMinHeight,
                        max: kMaxHeight,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BackgroundCard(
                      colour: kCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kCardLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kMesurementTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconBtn(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconBtn(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BackgroundCard(
                      colour: kCardColor,
                      cardChild: Column(
                        children: [
                          Text(
                            'AGE',
                            style: kCardLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kMesurementTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconBtn(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconBtn(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
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
            BottomBtn(
              btnText: 'CALCULATE',
              onPress: () {
                BMICalculator bmiObj =
                    BMICalculator(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: bmiObj.calculateBMI(),
                      resultText: bmiObj.getResult(),
                      interpretation: bmiObj.getInterPretation(),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
