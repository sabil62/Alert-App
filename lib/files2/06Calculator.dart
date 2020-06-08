import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  bool ispressed = false;
  void createTrue(PointerDownEvent event) {
    setState(() {
      ispressed = true;
    });
  }

  void createFalse(PointerUpEvent event) {
    setState(() {
      ispressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.65),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(height: 24),
          //this is the gap
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.white.withOpacity(.9),
                border:
                    Border.all(color: Colors.black.withOpacity(.3), width: 2)),
          ),
          SizedBox(height: 10),
          Row(children: <Widget>[]),
          SizedBox(height: 10),
          Table(
            children: [
              TableRow(children: [
                buildButton('AC', createTrue, ispressed, createFalse,
                    Colors.orange[600]),
                buildButton('SHIFT', createTrue, ispressed, createFalse,
                    Colors.orange[400]),
                buildButton('ALPH', createTrue, ispressed, createFalse,
                    Colors.orange[400]),
                buildButton('MODE', createTrue, ispressed, createFalse,
                    Colors.orange[400]),
              ]),
              TableRow(children: [
                buildButton(
                    '7', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '8', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '9', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '/', createTrue, ispressed, createFalse, Colors.grey[350]),
              ]),
              TableRow(children: [
                buildButton(
                    '4', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '5', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '6', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '×', createTrue, ispressed, createFalse, Colors.grey[350]),
              ]),
              TableRow(children: [
                buildButton(
                    '1', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '2', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '3', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '-', createTrue, ispressed, createFalse, Colors.grey[350]),
              ]),
              TableRow(children: [
                buildButton(
                    '.', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '0', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '00', createTrue, ispressed, createFalse, Colors.grey[350]),
                buildButton(
                    '+', createTrue, ispressed, createFalse, Colors.grey[350]),
              ]),
            ],
          )
        ]),
      ),
    );
  }

  Widget buildButton(String text, var createTrue, bool ispressed,
      void createFalse(PointerUpEvent event), Color colorss) {
    return Listener(
      onPointerDown: createTrue,
      onPointerUp: createFalse,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          decoration: ispressed ==
                  true //this is very important you can just do it in decoration without creating two widgets
              ? BoxDecoration(
                  color: Colors.orange.withOpacity(.5),
                  borderRadius: BorderRadius.circular(28.0))
              : BoxDecoration(
                  color: colorss, borderRadius: BorderRadius.circular(18.0)),
          child: Center(
              child: Text(text,
                  style: TextStyle(
                      color: Colors.white.withOpacity(.8),
                      fontSize: 24,
                      fontWeight: FontWeight.w900))),
        ),
      ),
    );
  }
}
