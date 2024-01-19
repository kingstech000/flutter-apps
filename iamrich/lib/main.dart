// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Settings",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Settings"),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Enter username"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Notifications"),
                Switch(
                    value: value,
                    onChanged: (newValue) {
                      setState(() {
                        value = newValue;
                      });
                    }),
              ],
            ),
            ElevatedButton(
                  onPressed: () {},
                  child: Text("Save"),
                ),
          ]),
        ),
      ),
    );
  }
}
