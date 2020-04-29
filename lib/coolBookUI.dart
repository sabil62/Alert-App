import 'package:flutter/material.dart';

class CoolUIBook extends StatefulWidget {
  @override
  _CoolUIBookState createState() => _CoolUIBookState();
}

class _CoolUIBookState extends State<CoolUIBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: ListView(children: <Widget>[
        customAppBar(),
        SizedBox(
          height: 20,
        ),
        makeDoubleDecker(
            "The priority of orange tree",
            "Samantha Simon",
            "https://qph.fs.quoracdn.net/main-qimg-9b4267c07c73a0c6099650d9fd3e9933",
            350),
        SizedBox(height: 10),
        makeDoubleDecker(
            "The Arsonist",
            "Chloe Hoper",
            "https://www.booktopia.com.au/blog/wp-content/uploads/2018/12/the-arsonist.jpg",
            250),
        SizedBox(height: 10),
        makeDoubleDecker(
            "Portal Jumper",
            "John Doe",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTY_348Ou-M_VQDr6hnekacVYbE7aTEvijuiF1YdMb31rZpXNx8&usqp=CAU",
            1020),
        SizedBox(height: 10),
        makeDoubleDecker(
            "The Vintage Tales",
            "Norman Cloutch",
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/vintage-book-cover-template-design-fe1040a9952994208fcae6066ab78f2b_screen.jpg?ts=1561553736",
            1020),
        SizedBox(height: 10),
        makeDoubleDecker(
            "The Happy Lemon",
            "Kurt Yamashita",
            "https://mir-s3-cdn-cf.behance.net/project_modules/disp/e4eebe15603673.562949f8bfeac.jpg",
            560),
        SizedBox(height: 10),
        makeDoubleDecker(
            "The Title",
            "BB sing bing",
            "https://bookcoverdesigns.eu/wp-content/uploads/2018/02/Self-Help-003a.jpg",
            1020),
      ]),
    );
  }

  Widget customAppBar() {
    return Container(
      height: 80,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.centerLeft,
              stops: [0.2, 0.6, 0.85],
              colors: [Colors.teal[300], Colors.teal[600], Colors.teal[800]])),
      child: Center(
        child: Text("COOL UI",
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                color: Colors.grey[200])),
      ),
    );
  }

  Widget makeDoubleDecker(
      String title, String author, String image, int price) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
              height: 270,
              width: 250,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: new DecorationImage(
                      image: new NetworkImage(image), fit: BoxFit.fill))),
          Positioned(
              left: 140,
              top: 70,
              child: Material(
                elevation: 14,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(24),
                child: Container(
                    height: 150,
                    width: 230,
                    child: Column(children: <Widget>[
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          child: Center(
                              child: Text(title,
                                  style: TextStyle(
                                      color: Color(0xff07128a),
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                          child: Center(
                        child: Text(author,
                            style: TextStyle(
                                color: Color(0xff2da9ef),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                      )),
                      SizedBox(height: 10),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("US " + price.toString(),
                              style: TextStyle(
                                  color: Color(0xffff6f00), fontSize: 19.0)),
                          Container(
                            child: Icon(
                              Icons.airline_seat_flat_angled,
                              color: Color(0xffff6f00),
                            ),
                          ),
                        ],
                      ))
                    ])),
              ))
        ],
      ),
    );
  }
}

// class Books {
//   String title;
//   String author;
//   String image;
//   int price;
//   Books(this.title, this.author, this.image, this.price);
// }

// var booknames = [
//   Books(
//       "The priority of orange tree",
//       "Samantha Simon",
//       "https://qph.fs.quoracdn.net/main-qimg-9b4267c07c73a0c6099650d9fd3e9933",
//       350),
//   Books(
//       "The Happy Lemon",
//       "Kurt Yamashita",
//       "https://marketplace.canva.com/EADaiDo2aSo/1/0/251w/canva-yellow-lemon-children-book-cover-Fb1rBcVIu2U.jpg",
//       560),
//   Books(
//       "The Arsonist",
//       "Chloe Hoper",
//       "https://www.booktopia.com.au/blog/wp-content/uploads/2018/12/the-arsonist.jpg",
//       250),
//   Books(
//       "The Vintage Tales",
//       "Norman Cloutch",
//       "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/vintage-book-cover-template-design-fe1040a9952994208fcae6066ab78f2b_screen.jpg?ts=1561553736",
//       1020)
// ];
