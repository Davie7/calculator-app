import 'package:flutter/material.dart';

import 'buttons.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    buttonText: 'C',
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
                Button(
                    buttonText: '/',
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
                Button(
                    buttonText: 'x',
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
                Button(
                    buttonText: '%',
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    buttonText: '7',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '8',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '9',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '-',
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    buttonText: '4',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '5',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '6',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '+',
                    buttonColor: Colors.blue,
                    textColor: Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    buttonText: '1',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '2',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '3',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '=',
                    buttonColor: Colors.blue,
                    textColor: Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    buttonText: '0',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                Button(
                    buttonText: '.',
                    buttonColor: Colors.grey[850]!,
                    textColor: Colors.white),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 50, 10),
                    child: Text(
                      'Clear',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // The logic of the calculator
  double firstNumber = 0;
  double secondNumber = 0;
  String result = '';
  String text = '';
  String operand = '';

  void calculate(String buttonText) {
    if (buttonText == 'C') {
      firstNumber = 0;
      secondNumber = 0;
      result = '';
      text = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '/' ||
        buttonText == 'x') {
      firstNumber = double.parse(text);
      result = '';
      operand = buttonText;
    } else if (buttonText == '=') {
      secondNumber = double.parse(text);
      if (operand == '+') {
        result = (firstNumber + secondNumber).toString();
      }
      if (operand == '-') {
        result = (firstNumber - secondNumber).toString();
      }
      if (operand == 'x') {
        result = (firstNumber * secondNumber).toString();
      }
      if (operand == '/') {
        result = (firstNumber / secondNumber).toString();
      }
    } else {
      result = (text + buttonText).toString();
    }
  }
}
