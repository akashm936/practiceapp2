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
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child:
          icon != null
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [icon!,Container(width: 11,),Text(btnText, style: textStyle)])
              : Text(btnText, style: textStyle),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shadowColor: bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(21))
        )
      )
    );
  }
}
