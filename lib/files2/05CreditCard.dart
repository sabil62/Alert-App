import 'package:flutter/material.dart';

class CreditCardApp extends StatefulWidget {
  @override
  _CreditCardAppState createState() => _CreditCardAppState();
}

class _CreditCardAppState extends State<CreditCardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300].withOpacity(.85),
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
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                buildCreditCard(),
                buildCreditCard(),
                buildCreditCard(),
              ]),
        ),
        SizedBox(height: 12),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Transactions',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black.withOpacity(.9),
                fontWeight: FontWeight.w900,
              )),
          Icon(
            Icons.transfer_within_a_station,
            size: 25,
            color: Colors.blue[900].withOpacity(.5),
          )
        ]),
        SizedBox(height: 10),
        Text('Today',
            style: TextStyle(
              fontSize: 21,
              color: Colors.black.withOpacity(.6),
              fontWeight: FontWeight.w600,
            )),
        buildTransactionCard('Apple MacBook', -2135),
        SizedBox(height: 5),
        buildTransactionCard('Salary MainJob', 3000),
        SizedBox(height: 5),
        Text('Yesterday',
            style: TextStyle(
              fontSize: 21,
              color: Colors.black.withOpacity(.6),
              fontWeight: FontWeight.w600,
            )),
        buildTransactionCard('Apple Iphone 11 max', -1635),
        SizedBox(height: 5),
        buildTransactionCard('Salary SideJob', 900),
        SizedBox(height: 5),
        buildTransactionCard('Apple TV', -3135),
        SizedBox(height: 5),
        buildTransactionCard('Salary MainJob', 3000),
        SizedBox(height: 5),
      ]),
    );
  }

  Widget buildTransactionCard(String name, double amount) {
    Color transacColor;
    IconData icons;
    if (amount > 0) {
      transacColor = Colors.green;
      icons = Icons.report_off;
    } else {
      transacColor = Colors.red;
      icons = Icons.report;
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 14, 8, 14),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Row(children: [
          Icon(icons, color: transacColor.withOpacity(.8), size: 32),
          SizedBox(width: 12),
          Column(children: [
            Text(name,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(.9),
                  fontWeight: FontWeight.w700,
                )),
            Text('Transaction',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(width: 300),
            Text(amount.toString(),
                style: TextStyle(
                  fontSize: 26,
                  color: transacColor,
                  fontWeight: FontWeight.w900,
                )),
          ])
        ]),
      ),
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
                  children: <Widget>[
                    Text(
                      'Lion Bayon',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(.5),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Real Lion Bayon',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white.withOpacity(.9),
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Column(children: [
                  Text(
                    'Express',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(.5),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '05/20',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white.withOpacity(.9),
                        fontWeight: FontWeight.w900),
                  ),
                ]),
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
