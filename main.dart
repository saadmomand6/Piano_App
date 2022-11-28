import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const PianoApp());
}

class PianoApp extends StatelessWidget {
  const PianoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Center(child: Text("Piano App")),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
             Sound(
              text: "1",
              color: Colors.yellow,
              number: 1,
            ),
             Sound(
              text: "2",
              color: Colors.orange,
              number: 2,
            ),
               Sound(
              text: "3",
              color: Colors.red,
              number: 3,
            ),
               Sound(
              text: "4",
              color: Colors.pink,
              number: 4,
            ),
               Sound(
              text: "5",
              color: Colors.purple,
              number: 5,
            ),
               Sound(
              text: "6",
              color: Colors.blue,
              number: 6,
            ),
               Sound(
              text: "7",
              color: Colors.green,
              number: 7,
            ),      
          ],
        ),
        )     
    );
  }
}

class Sound extends StatelessWidget {
  final Color color;
  final String text;
  final int number;

  const Sound({
    Key? key,
    required this.color,
    required this.number,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 100,
        color: color,
        child: TextButton(
            onPressed: ()  {
              final player = AudioPlayer();
              player.play(AssetSource('note$number.mp3'));
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              ),
            child: Text(text,
            style: const TextStyle(fontSize: 60),),
            ),
      ),
    );
  }
}