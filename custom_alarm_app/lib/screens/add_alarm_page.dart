import 'package:flutter/material.dart';
import 'package:alarm_app/constants/alarm_page_constants.dart';
import 'package:flutter/widgets.dart';


class AddAlarm extends StatefulWidget {
  @override
  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {

  int initVolume = 62;
  int hour = 0;
  int minute = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Alarm'),
        actions: [
          Icon(
            Icons.check,
            color: Color(0xFF3B916F),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [

            Expanded(
              flex: 8,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.only(left: 40.0),
                      width: 20,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: ListWheelScrollView(
                          onSelectedItemChanged: (newHour) {
                            setState(() {
                              hour = newHour;
                            });
                          },
                          offAxisFraction: -0.3,
                          useMagnifier: true,
                          itemExtent: 50,
                          children: [
                            Text('20',
                            style: kTimeTextStyle,
                            ),
                            Text('20',
                              style: kTimeTextStyle,),
                            Text('20',
                              style: kTimeTextStyle,),
                            Text('20',
                              style: kTimeTextStyle,),
                            Text('20',
                              style: kTimeTextStyle,),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Text(':',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(0.0),
                      padding: EdgeInsets.only(right: 40.0),
                      width: 20,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: ListWheelScrollView(
                          onSelectedItemChanged: (newMinute) {
                            setState(() {
                              minute = newMinute;
                            });
                          },
                          offAxisFraction: 0.3,
                          useMagnifier: true,
                          itemExtent: 50,
                          children: [
                            Text('12',
                              style: kTimeTextStyle,
                            ),
                            Text('13',
                              style: kTimeTextStyle,),
                            Text('14',
                              style: kTimeTextStyle,),
                            Text('15',
                              style: kTimeTextStyle,),
                            Text('16',
                              style: kTimeTextStyle,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text(
                'Alarm in',
                style: TextStyle(
                    color: kLightBlackColour
                ),
              ),
            ),
            Expanded(child: Text('$hour Hours $minute Minute')),
            SizedBox(
              width: 320,
              height: 10.0,
              child: Divider(
                color: kLightBlackColour,
              ),
            ),
            Text(
                'Settings',

            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        'Mission',
                    textAlign: TextAlign.left,
                      ),
                  ),
                  Text('Math Test',
                    style: TextStyle(
                        color: kLightBlackColour
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.chevron_right)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                          'Ring Tone',
                        textAlign: TextAlign.left,
                      ),
                  ),
                  Text('ringTone Name',
                    style: TextStyle(
                        color: kLightBlackColour
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.chevron_right)
                ],
              ),
            ),
            Text('Volume'),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 30.0,
                inactiveTrackColor: Color(0xFF1E4938),
                activeTrackColor: Color(0xFF3B916F),
                thumbColor: Color(0xFF3B916F),
                // thumbShape:
                // RoundSliderThumbShape(enabledThumbRadius: 15.0),
                // overlayShape:
                // RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: initVolume.toDouble(),
                min: 0.0,
                max: 100.0,
                onChanged: (double newValue) {
                  setState(() {
                    initVolume = newValue.round();
                  });
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}
