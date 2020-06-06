import 'package:flutter/material.dart';

class CreditCardApp extends StatefulWidget {
  @override
  _CreditCardAppState createState() => _CreditCardAppState();
}

class _CreditCardAppState extends State<CreditCardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.format_align_justify,
                size: 25,
                color: Colors.black.withOpacity(.5),
              ),
              Text('My Card',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black.withOpacity(.6),
                    fontWeight: FontWeight.w600,
                  )),
              Icon(
                Icons.add_circle_outline,
                size: 25,
                color: Colors.blue[900].withOpacity(.5),
              )
            ],
          ),
        ),
        SizedBox(height: 18),
        ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[],
        )
      ]),
    );
  }

  Widget buildCreditCard() {
    return Container(
      height: 220,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: AssetImage('assets/JalandarHimalayas.jpg'),
              fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.blue[400], offset: Offset(4, 4), blurRadius: 5)
          ]),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blue[200].withOpacity(.7),
            Colors.blue[300].withOpacity(.7),
            Colors.blue[400].withOpacity(.7),
            Colors.blue[500].withOpacity(0.55)
          ],
          begin: Alignment.bottomLeft,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Current Balance',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.withOpacity(.6),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'BankX',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            Text(
              '\$12,340.230',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white.withOpacity(.9),
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 40),
            Row(children: [
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 11,
                    );
                  }),
              SizedBox(width: 20),
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 11,
                    );
                  }),
              SizedBox(width: 20),
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 11,
                    );
                  }),
              SizedBox(width: 20),
              Text(
                '1503',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white.withOpacity(.9),
                    fontWeight: FontWeight.w700),
              ),
            ]),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[],
                ),
                Column(children: []),
                Icon(
                  Icons.change_history,
                  size: 36,
                  color: Colors.white,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

Widget buildStar() {
  return Icon(Icons.star, color: Colors.white);
}
