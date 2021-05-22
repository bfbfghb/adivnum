import 'package:flutter/material.dart';

class Principal_Button extends StatelessWidget {

  final textbutton;
  final onPressed;

  const Principal_Button({Key key, @required this.textbutton, @required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: onPressed, child: Text(textbutton)),
      ],
    );
  }
}