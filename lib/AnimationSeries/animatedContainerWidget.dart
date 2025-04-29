import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget{
  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget>{

  var _width = 200.0;
  var _height = 100.0;
  var flag = false;
  var _boxDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.lightGreen,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Column(
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              decoration: _boxDecor,
              curve: Curves.easeInOutBack,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
               if(flag){
                 _width = 300;
                 _height = 300;
                 _boxDecor = BoxDecoration(
                   borderRadius: BorderRadius.circular(2),
                   color: Colors.purpleAccent,
                 );
                 flag = false;
               }
               else{
                 _width = 200;
                 _height = 200;
                 _boxDecor = BoxDecoration(
                   borderRadius: BorderRadius.circular(100),
                   color: Colors.deepOrange,
                 );
                 flag = true;
               }
              });
            }, child: Text("Animate"))
          ],
        ),

        ),
      ),
      
    );
  }
  
}