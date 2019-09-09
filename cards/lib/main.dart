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
    return MaterialApp(
        home: Scaffold(
          body: Center (
            child: Card(
              color: Colors.purple[50],
              elevation: 30.0,
              shape: Border.all(color: Colors.purple[300], width: 3.0),
              child:  Padding(
                padding: const EdgeInsets.all(50.0),
                child:  Column (
                mainAxisSize:  MainAxisSize.min,
                children: <Widget>[
                  FlutterLogo(size: 100.0), 
                        
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Hello"),
                  )
                ],)
            )
            )
          )
            
        ));
  }
}