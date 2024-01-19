// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 70.0,
                child: Image.asset(
                  "image/user2.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Center(
                child: Text(
                  "Muomaife Kingsley",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                width: 5.0,
                height: 40.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "+234 9165758846",
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ],
                ),
              ),
              Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              width: 5.0,
              height: 40.0,
              child: Row(
                children: [
                  Icon(Icons.email, 
                  color: Colors.teal,
                  ),
                  SizedBox(width: 0.0,),
                  Text("ezekingsley656@gmail.com", style: TextStyle(color: Colors.teal.shade900),),
                ],
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
