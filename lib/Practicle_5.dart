import 'package:flutter/material.dart';



class Practicle_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.red,
        fontFamily: 'Montserrat', // Font imported from the package
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practicle-5'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('charusat'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('d22it213 tapped')),
                );
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('d22it213@charusat.edu.in')),
                );
              },
            ),
          ],
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Current Orientation:',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  orientation == Orientation.portrait ? 'Portrait' : 'Landscape',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
