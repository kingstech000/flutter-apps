// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class customRaisedButton extends StatelessWidget {
  const customRaisedButton(
      {this.child, this.style, this.text, this.onpressed, this.height = 50.0});
  final Widget? child;
  final ButtonStyle? style;
  final Text? text;
  final double height;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: style,
        onPressed: onpressed,
        child: child,
      ),
    );
  }
}
