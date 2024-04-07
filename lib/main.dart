import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'Practicle_1.dart';
import 'Practicle_2.dart';
import 'Practicle_3.dart';
import 'Practicle_4.dart';
import 'Practicle_5.dart';
import 'Practicle_6.dart';
import 'Practicle_7.dart';
import 'Practicle_8.dart';
import 'Practicle_9.dart';
import 'Practicle_10.dart';
import 'presentation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  
 

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practicles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practicle List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(11, (index) {
          return Center(
           
            child: ElevatedButton(
              child: Text(
                'Practicle ${index + 1}',
              ),
              onPressed: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_1()),
                  );
                }
                else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_2()),
                  );
                }
                else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_3()),
                  );
                }
                else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_4()),
                  );
                }
                else if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_5()),
                  );
                }
                else if (index == 5) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_6()),
                  );
                }
                else if (index == 6) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_7()),
                  );
                }
                else if (index == 7) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_8()),
                  );
                }
                else if (index == 8) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_9()),
                  );
                }
                else if (index == 9) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practicle_10()),
                  );
                }
                 else if (index == 10) {
                  Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => Presenatation()),
                  );
                }
              }
                
            ),
            
          );
          
        }),
      ),
      
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
