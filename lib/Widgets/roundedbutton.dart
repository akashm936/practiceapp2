import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  RoundedButton({
    required this.btnText,
    this.icon,
    this.bgcolor = Colors.blue,
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      callback!();
    }, child: Row());
  }
}
