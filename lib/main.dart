import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Xylophone()
        ),
      )
    );
  }
}


class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  final player = AudioCache();
  playSound(int soundKey) {
    player.play('note$soundKey.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            child: Container(color: Colors.brown,),
              onPressed: () {
              playSound(1);
          })
        ),
        Expanded(
            child: TextButton(
              child: Container(color: Colors.yellow,),
                onPressed: () {
              playSound(2);
            })
        ),
        Expanded(
            child: TextButton(
              child: Container(color: Colors.red,),
                onPressed: () {
              playSound(3);
            })),
        Expanded(
            child: TextButton(
              child: Container(color: Colors.green,),
                onPressed: () {
              playSound(4);
            })
        ),
        Expanded(
            child: TextButton(
              child: Container(color: Colors.grey,),
                onPressed: () {
              playSound(5);
            })
        ),
        Expanded(
            child: TextButton(
              child: Container(color: Colors.blue,),
                onPressed: () {
              playSound(6);
            })
        ),
        Expanded(
            child: TextButton(
              child: Container(color: Colors.pink,),
                onPressed: () {
              playSound(7);
            })
        ),
      ],
    );
  }
}
