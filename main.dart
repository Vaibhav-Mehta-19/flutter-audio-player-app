import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LW'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              child: Card(
                color: Colors.red,
                child: Image.asset('images/vm.jpg'),
                elevation: 5,
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  print('hi');
                  var audio = AudioCache();
                  audio.play('audio/note1.wav');
                },
                child: Card(
                  color: Colors.green,
                  child: Text('sec'),
                  elevation: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
