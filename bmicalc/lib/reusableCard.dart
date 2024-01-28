// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class resusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onpressed;
  resusableCard({required this.colour, this.cardChild, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
