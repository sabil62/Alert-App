import 'package:flutter/material.dart';

class HeroAnimationApp extends StatefulWidget {
  @override
  _HeroAnimationAppState createState() => _HeroAnimationAppState();
}

class _HeroAnimationAppState extends State<HeroAnimationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation')),
      body: Column(children: [
        Container(
          height: 60,
          child: Hero(
            tag: 'lion',
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return HeroAnime();
                }));
              },
              child: Image.asset('assets.simba.png'),
            ),
          ),
        )
      ]),
    );
  }
}

class HeroAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Hero(tag: 'lion', child: Image.asset('assets.simba.png'))),
    );
  }
}
