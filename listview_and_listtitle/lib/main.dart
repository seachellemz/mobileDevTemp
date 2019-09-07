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
      // The scaffold is the main area of the app...we set its attributes and the
      // add child elements to it.
        home: Scaffold(
          body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title:  Text("List Item Number:  " + index.toString()),
                  );
              },
              itemCount: 20,

            ),
            
          ),
          
    );
  }
}
