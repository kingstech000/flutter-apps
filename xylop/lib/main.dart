// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 184, 184),
      body: xylo(),
    ),
  ));
}

class xylo extends StatelessWidget {
  const xylo({super.key});
  Future<void> playsound(int soundnumbere) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundnumbere.wav'));
  }
  Expanded soundbutton({int? soundnumber, Color? color, int? textnumber}){
            return Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color),
                padding: MaterialStatePropertyAll(EdgeInsets.all(5.0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              onPressed: () async {
                playsound(soundnumber!);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 20,),
                  Text("note$textnumber", style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          soundbutton(soundnumber: 1, color: Colors.green, textnumber: 1),
          soundbutton(soundnumber: 2, color: Colors.orange, textnumber: 2),
          soundbutton(soundnumber: 3, color: Colors.red, textnumber: 3),
          soundbutton(soundnumber: 4, color: Colors.blue, textnumber: 4),
          soundbutton(soundnumber: 5, color: Colors.indigo, textnumber: 5),
          soundbutton(soundnumber: 6, color: Colors.brown, textnumber: 6),
          soundbutton(soundnumber: 7, color: Colors.teal, textnumber: 7),
        ],
      ),
    );
  }
}
