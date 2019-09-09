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
      // Expandec an be applied to columns or rows.  Uncomment the
      // following to show the impact it has on a column.  
      //body: Column (
        body: Row(
        children: <Widget>[
          Expanded ( 
            flex:1,
            child: Card( 
              child: Center(child: Text("Hey iam card 1")),
            ),
          ),
          Expanded (
            // causes this card to take up twice as much
            // space as card one and card 3. 
            flex:2,
            child: Card( 
              child: Center(child: Text("Hey iam card 2")),
            ),
          ),
          Expanded ( 
            flex:1,
            child: Card( 
              child: Center(child: Text("Hey iam card 3")),
            ),
          ),
        ],
      )
              

            
    ),);
  }
}
