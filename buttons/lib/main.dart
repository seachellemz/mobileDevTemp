import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Scaffold(
            appBar: new AppBar(
              backgroundColor: const Color(0xFF0099a9),
            ),
            body: Column(children: <Widget>[
              Row(
                //ROW 1
                children: [
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text("Press Me"),
                      onPressed: () {
                        print("FlatButton Pressed");
                      },
                      color: Colors.blueGrey,
                      onHighlightChanged: (b){
                        if (b) {
                          print ("highlight changed is true");
                        } else {
                          print ("highlight changed is false");
                        }
                      },
                      splashColor: Colors.purple[300],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(10.0),
                    child: FlatButton.icon(
                      icon: Icon(Icons.cake),
                      label: Text("Cake"),
                      onPressed: () {
                        print("FlatButton.Icon Pressed");
                      },
                    ),
                  ),
                  Container(
                    color: Colors.purple[50],
                    margin: EdgeInsets.all(10.0),
                    child: OutlineButton(
                      child: Text("Press Me"),
                      borderSide: BorderSide (
                        color: Colors.purple[300],
                        width: 3.0
                      ),
                      padding:  EdgeInsets.all(15),
                      onPressed: () {
                        print("OutlineButton Pressed");
                      },
                    ),
                  ),
                ],
              ),
              Row(//ROW 2
                  children: [
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.all(25.0),
                  child: IconButton(
                      icon: Icon(Icons.pin_drop),
                      color: Colors.purple[300],
                      iconSize: 50.0,
                      // Shows when user does a long-press
                      tooltip: "Location",
                      onPressed: () {
                        print("IconButton Pressed");
                      },
                    ),
                ),
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.all(25.0),
                  child: RaisedButton(
                      color: Colors.purple[50],
                      child: Text("Press Me"),
                      // Shows when user does a long-press
                      onPressed: () {
                        print("RaisedButton Pressed");
                      },
                    ),
                ),
                Container(
                  color: Colors.purple,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                )
              ]),
              Row(// ROW 3
                  children: [
                Container(
                  color: Colors.orange,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  margin: EdgeInsets.all(25.0),
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ]),
            ])));
  }
}