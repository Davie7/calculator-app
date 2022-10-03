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
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '8',
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '9',
                    buttonColor: Colors.grey,
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
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '5',
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '6',
                    buttonColor: Colors.grey,
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
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '2',
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '3',
                    buttonColor: Colors.grey,
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
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '.',
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
                Button(
                    buttonText: '3',
                    buttonColor: Colors.grey,
                    textColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
