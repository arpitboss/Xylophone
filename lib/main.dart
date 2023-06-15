import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNum)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }

  Expanded BuildKey(Color color, int soundNum) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: (){
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black ,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(Colors.red, 1),
              BuildKey(Colors.orange,2),
              BuildKey(Colors.yellow,3),
              BuildKey(Colors.green,4),
              BuildKey(Colors.blue,5),
              BuildKey(Colors.indigo,6),
              BuildKey(Colors.purple,7),
              ]
          ) ,
        ),
      ),
    );
  }
}
