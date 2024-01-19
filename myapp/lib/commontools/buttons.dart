// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class raisedbutton extends StatelessWidget {
  const raisedbutton({this.height = 70.0, this.child, this.style, this.borderRadius, this.onpressed});
  final Widget? child;
  final ButtonStyle? style;
  final double? borderRadius;
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
