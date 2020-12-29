import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void makeSound(int num) async {
    final player = AudioCache();
    var bytes = await (await player.load('note$num.wav')).readAsBytes();
    player.playBytes(bytes);
  }

  Expanded buildButton(Color color, int num) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          makeSound(num);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              buildButton(Colors.red, 1),
              buildButton(Colors.orange, 2),
              buildButton(Colors.yellow, 3),
              buildButton(Colors.green, 4),
              buildButton(Colors.teal, 5),
              buildButton(Colors.blue, 6),
              buildButton(Colors.blue[400],7),
            ],
          ),
        ),
      ),
    );
  }
}
