import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroDetailsWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HeroDetailsWidgetState();
}

class _HeroDetailsWidgetState extends State<HeroDetailsWidget>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Image Details"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Hero(tag: 'Background', child: Image.asset('assets/images/background.jpg',fit: BoxFit.fill,),
      ),
          )
    );
  }
  
}

