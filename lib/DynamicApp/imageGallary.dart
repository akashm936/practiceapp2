import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imagegallary extends StatefulWidget {
  const Imagegallary({super.key});

  @override
  State<Imagegallary> createState() => _ImagegallaryState();
}

class _ImagegallaryState extends State<Imagegallary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallary'),
      ),
      body: ElevatedButton(onPressed: fetchImages, child: Text("Fetch Images")),
    );
  }

  void fetchImages(){
    print("Fetch Images Is Started");
  }
  
}
