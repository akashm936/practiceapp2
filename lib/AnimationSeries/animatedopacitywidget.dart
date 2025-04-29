import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  var _myOpacity = 1.0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _myOpacity,
              duration: Duration(seconds: 2),
              curve: Curves.linear,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.purpleAccent,
              ),
            ),
            ElevatedButton(onPressed: (){
             setState(() {
               if(flag){
                 _myOpacity = 0.0;
                 flag = false;
               }
               else{
                 _myOpacity = 1.0;
                 flag = true;
               }
             });
            }, child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
