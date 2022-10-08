import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget button(String buttonText, Color buttonColor, Color textColor) {
    return ElevatedButton(
      child: Text(
        buttonText,
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: textColor),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          70,
          70,
        ),
        shape: CircleBorder(),
        backgroundColor: buttonColor,
      ),
      onPressed: () {
        return calculate(buttonText);
      },
    );
  }

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
                    text,
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
                button('C', Colors.blue, Colors.white),
                button('/', Colors.blue, Colors.white),
                button('x', Colors.blue, Colors.white),
                button('%', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('7', Colors.grey[850]!, Colors.white),
                button('8', Colors.grey[850]!, Colors.white),
                button('9', Colors.grey[850]!, Colors.white),
                button('-', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('4', Colors.grey[850]!, Colors.white),
                button('5', Colors.grey[850]!, Colors.white),
                button('6', Colors.grey[850]!, Colors.white),
                button('+', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('1', Colors.grey[850]!, Colors.white),
                button('2', Colors.grey[850]!, Colors.white),
                button('3', Colors.grey[850]!, Colors.white),
                button('=', Colors.blue, Colors.white)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('0', Colors.grey[850]!, Colors.white),
                button('.', Colors.grey[850]!, Colors.white),
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
    setState(() {
      text = result;
    });
  }
}
