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
          body: Stack(
            alignment:  AlignmentDirectional.center,
            // if you don't specify "fit", you don't see the frame
            // around the padding.
            fit:  StackFit.expand,

            children: <Widget>[
              // This occurence of the Flutter log will be inside of 
              // the padded area, but behind it because the padding 
              // overlays it.    
              FlutterLogo(),
              
              // This is the padded area inside the Stack
              Padding(padding: const EdgeInsets.all(25.0),
                  child:  Card(
                    elevation:  5.0,
                    // Set the color to transparent so that you can
                    // see the behavior of FlutterLogo both inside
                    // and outside of the padded area.
                    color:  Colors.transparent,
                    //color:  Colors.purple[50],

                    child:  Text(
                      "Learn Flutter",
                      textAlign:   TextAlign.center,
                      style:  TextStyle(
                        color: Colors.purple[200],
                        fontWeight: FontWeight.bold),
                      )
                  )
                ),
              // This occurence will be outside of the padded area,
              // but in front of it because it is listed second in the 
              // stack.
              //FlutterLogo()
            ]
          )
          
        )
    );
  }
}
