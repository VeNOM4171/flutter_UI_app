import 'package:flutter/material.dart';
import 'package:alarm_app/components/add_btn.dart';
import 'package:alarm_app/constants/alarm_page_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'add_alarm_page.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Alarm'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Next Alarm',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: kLightBlackColour,
                        fontSize: kSmallTextFont,
                      ),
                    ),
                    Text(
                      '5 Hours 40 Minute',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text(
                        'Alarms',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                      initiallyExpanded: true,
                      onExpansionChanged: (bool value) {
                        
                      },
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '02 : 00',
                                    style: kTimeTextStyle,
                                  ),

                                  Transform.scale(
                                    scale: 0.7,
                                    child: LiteRollingSwitch(
                                      value: true,
                                      textOn: 'on',
                                      textOff: 'off',
                                      colorOn: Color(0xFF3B916F),
                                      colorOff: Color(0xFF4D4D4D),
                                      iconOn: Icons.done,
                                      iconOff: Icons.alarm_off,
                                      textSize: 25.0,
                                      onChanged: (bool position) {
                                          print('button is $position');
                                      },
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Text('frequency',
                                    style: TextStyle(
                                        fontSize: kSmallTextFont,
                                        color: kLightBlackColour
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.solidCircle,
                                    size: 6,
                                    color: Color(0xFF3B916F),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text('Alarm Stop Misson',
                                    style: TextStyle(
                                        fontSize: kSmallTextFont,
                                        color: kLightBlackColour
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),

                      ],
                  ),

                  AddBtn(
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddAlarm()
                            ),
                        );
                      },
                      addBtnText: 'Add Alarm'
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text(
                        'Timer',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    initiallyExpanded: true,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      '07 : 28',
                                    style: kTimeTextStyle,
                                  ),
                                  Text(
                                      'timer info',
                                    style: TextStyle(
                                      fontSize: kSmallTextFont,
                                      color: kLightBlackColour
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.pause_rounded,
                              size: 35.0,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                                Icons.stop_rounded,
                              color: Colors.red[300],
                              size: 35.0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  AddBtn(onPress: () {}, addBtnText: 'Add Timer')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
