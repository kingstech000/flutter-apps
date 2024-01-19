import 'package:flutter/material.dart';
import 'package:rich/app/sign-up/sign-up.dart';

void main() {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Timetracker",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Signuppage(),
    );
  }
}


