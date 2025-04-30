import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp2/AnimationSeries/herodetailswidget.dart';

class HeroAnimationWidget1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HeroAnimationWidgetState();
}

class _HeroAnimationWidgetState extends State<HeroAnimationWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animattion"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Container(
          child: InkWell(
            onTap:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HeroDetailsWidget()));
              },
            child: Hero(
              tag: 'Background',
              child: Image.asset(
                'assets/images/background.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
