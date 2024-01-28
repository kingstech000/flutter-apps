// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'constant.dart';


class iconCard extends StatelessWidget {
  final String gender;
  final IconData myIcon;

  iconCard({required this.myIcon, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(myIcon),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: labelStyle,
        ),
      ],
    );
  }
}
