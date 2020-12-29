import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alarm_app/screens/alarm_page.dart';

void main() {
  runApp(AlarmApp());
}

class AlarmApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,

      ),
      home: AlarmPage(),
    );
  }
}




