import 'package:flutter/material.dart';


class Practicle_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practicle-2'),
        ),
        body: SwipeImages(),
      ),
    );
  }
}

class SwipeImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Image.asset('assets/Pr-2-1.png'),
        Image.asset('assets/Pr-2-2.png'),
      ],
    );
  }
}
