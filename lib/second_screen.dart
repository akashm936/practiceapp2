import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp2/main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Text("Back to Home Screen "),
        ),
      ),
    );
  }
}
