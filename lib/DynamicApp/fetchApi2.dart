import 'package:flutter/material.dart';

class FetchApi2 extends StatefulWidget {
  const FetchApi2({super.key});

  @override
  State<FetchApi2> createState() => _FetchApi2State();
}

class _FetchApi2State extends State<FetchApi2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Api 2"),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
