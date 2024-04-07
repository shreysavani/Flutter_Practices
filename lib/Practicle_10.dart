import 'package:flutter/material.dart';


class Practicle_10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practicle-1'),
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
        Image.asset('assets/Pr-10-1.png'),
        
      ],
    );
  }
}
