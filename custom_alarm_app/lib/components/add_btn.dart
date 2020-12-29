import 'package:alarm_app/constants/alarm_page_constants.dart';
import 'package:flutter/material.dart';

class AddBtn extends StatelessWidget {
  AddBtn({@required this.onPress, @required this.addBtnText});

  final Function onPress;
  final String addBtnText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
        child: Container(
          child: Center(
            child: Text(
                addBtnText,
              style: kAddBtnStyle,
            ),
          ),
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(5.0),
          width: double.infinity,
          height: kAddBtnHeight,
          decoration: BoxDecoration(
            color: Color(0xFF1E4938),
            borderRadius: BorderRadius.circular(10.0),
          ),
        )
    );
  }
}
