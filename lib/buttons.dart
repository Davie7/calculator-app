import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor});

  void buttonPressed(String buttonText){
    print('$buttonText');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: textColor),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70,),
        shape: CircleBorder(),
        backgroundColor: buttonColor,
      ),
      onPressed: () {
        return buttonPressed(buttonText);
      },
    );
  }
}
