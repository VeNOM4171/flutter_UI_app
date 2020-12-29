import 'package:flutter/material.dart';
import 'constants.dart';


class SexBtn extends StatelessWidget {
  SexBtn({@required this.sexIcon, @required this.sex});

  final IconData sexIcon;
  final String sex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(
          sexIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          sex,
          style: kCardLabelTextStyle,
        )
      ],
    );
  }
}