import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorRealApp extends StatefulWidget {
  @override
  _CalculatorRealAppState createState() => _CalculatorRealAppState();
}

class _CalculatorRealAppState extends State<CalculatorRealApp> {
  double equationFontSize = 38;
  double resultFontSize = 48;
  String result = "0";
  String equation = "0";
  //this is neede in = only
  String expression = "";
  calculate(String buttonNumber) {
    setState(() {
      if (buttonNumber == 'C') {
        equationFontSize = 38;
        resultFontSize = 48;
        equation = '0';
        result = '0';
      } else if (buttonNumber == '⌫') {
        equation = equation.substring(0, equation.length - 1);
        equationFontSize = 48;
        resultFontSize = 38;
        if (equation == '') {
          equation = '0';
        }
      } else if (buttonNumber == '=') {
        equationFontSize = 38;
        resultFontSize = 48;
        //this is the calcultor
        //below we are saying expression is equal to equation written and replacing × with * as computer doesnt understand ×
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try {
          Parser p = Parser(); //this is maths expression extension
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        equationFontSize = 48;
        resultFontSize = 38;
        // if (equation == "0") {
        //   //I think no need for this if part
        //   equation = buttonNumber;
        // } else {
        equation = equation + buttonNumber;
        // }
      }
    });
  }

  Widget buildButton(
      String buttontext, Color buttonColor, double sectionExpand) {
    return Container(
      color: buttonColor,
      height: MediaQuery.of(context).size.height * 0.1 * sectionExpand,
      // width: MediaQuery.of(context).size.width * 0.25,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.0),
              side: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          onPressed: () => calculate(
              buttontext), // or use this -> (){ calculate(buttontext);},
          child: Text(
            buttontext,
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Calculator')),
      body: Column(children: [
        SizedBox(height: 50),
        Text(equation, style: TextStyle(fontSize: equationFontSize)),
        Text(result, style: TextStyle(fontSize: resultFontSize)),
        Expanded(child: Divider()),
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Table(children: [
                TableRow(children: [
                  buildButton('C', Colors.redAccent, 1),
                  buildButton('⌫', Colors.orange[300], 1),
                  buildButton('÷', Colors.orange[300], 1),
                ]),
                TableRow(children: [
                  buildButton('7', Colors.black54, 1),
                  buildButton('8', Colors.black54, 1),
                  buildButton('9', Colors.black54, 1),
                ]),
                TableRow(children: [
                  buildButton('4', Colors.black54, 1),
                  buildButton('5', Colors.black54, 1),
                  buildButton('6', Colors.black54, 1),
                ]),
                TableRow(children: [
                  buildButton('1', Colors.black54, 1),
                  buildButton('2', Colors.black54, 1),
                  buildButton('3', Colors.black54, 1),
                ]),
                TableRow(children: [
                  buildButton('.', Colors.black54, 1),
                  buildButton('0', Colors.black54, 1),
                  buildButton('00', Colors.black54, 1),
                ]),
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Table(children: [
                TableRow(children: [buildButton('×', Colors.orange[300], 1)]),
                TableRow(children: [buildButton('-', Colors.orange[300], 1)]),
                TableRow(children: [buildButton('+', Colors.orange[300], 1)]),
                TableRow(children: [buildButton('=', Colors.redAccent, 2)]),
              ]),
            )
          ],
        )
      ]),
    );
  }
}
