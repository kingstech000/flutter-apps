// ignore_for_file: no_leading_underscores_for_local_identifiers, file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:rich/common-widget/custom-raised-button.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildcontent = Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Text("Time Tracker"),
        ),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            customRaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/images/google-logo.png"),
                  Text(
                    "Sign in with Google",
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset("images/images/google-logo.png"),
                  ),
                ],
              ),
              onpressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
            ),
            SizedBox(
              height: 8.0,
            ),
            customRaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/images/facebook-logo.png"),
                  Text(
                    "Sign in with Facebook",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset("images/images/facebook-logo.png"),
                  ),
                ],
              ),
              onpressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(238, 22, 59, 163))),
            ),
            const SizedBox(
              height: 8.0,
            ),
            customRaisedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(157, 8, 138, 77)),
              ),
              onpressed: () {},
              child: const Text(
                "Sign up with email",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            customRaisedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(157, 237, 253, 89)),
              ),
              onpressed: () {},
              child: const Text(
                "Go Anonymous",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return _buildcontent;
  }
}
