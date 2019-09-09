import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "My name is Mimi.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold (
      body: Column (
        children: <Widget>[
          Card( 
            child: Center(child: Text("Hey iam card 1")),
          ),
          Card( 
            child: Center(child: Text("Hey iam card 2")),
          ),
          Card( 
            child: Center(child: Text("Hey iam card 2")),
          ),
        ],
      )
              

            
    ),);
  }
}
