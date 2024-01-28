// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(const bmicalculator());
}

class bmicalculator extends StatelessWidget {
  const bmicalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0D22),
        appBarTheme: AppBarTheme(color: Color(0xff0A0D22)),
        scaffoldBackgroundColor: Color(0xff0A0D22),
      ),
      home: inputpage(),
    );
  }
}
