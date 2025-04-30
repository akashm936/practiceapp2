import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidget();
}

class _AnimatedCrossFadeWidget extends State<AnimatedCrossFadeWidget> {

  bool isFirst = true;

  @override
  void initState() {
    super.initState();

    // Timer(Duration(seconds: 4),(){
    //   reload();
    // });


  }

  void reload(){
    setState(() {
      if(isFirst){
        isFirst = false;
      }
      else{
        isFirst = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cross Fade"),backgroundColor: Colors.purpleAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.deepOrange,
              ),
              secondChild: Icon(Icons.file_copy, size: 100, color: Colors.deepOrange,),
              sizeCurve: Curves.easeIn,
              crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1),
            ),
            ElevatedButton(onPressed: reload, child: Text("click"))
          ],
        ),
      ),
    );
  }
}
