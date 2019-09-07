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
          body: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title:  Text("List tile Number:  " + index.toString()),
                  // this will make the list item actionable
                    onTap:  () {
                      print(index+1);
                    },
                    onLongPress:  () {
                      print("You long pressed on the list item");
                    },

                    // this will tighten the space between the list items
                    dense: true,

                    // This will add an icon to each item
                    leading:  Icon(Icons.alarm),
                    trailing:  Icon(Icons.pin_drop),
                  );
              },
              itemCount: 30,

              // after every 5 elements in the list, add a separator
              separatorBuilder: (context, index) {
                if ((index+1) %5 ==0) {
                  return ListTile(
                    title:  Text((index+1).toString()),
                    selected: true,
                    // this will make the separator actionable
                    onTap:  () {
                      print(index+1);
                    }
                  );
                } else {
                  return Container();
                }
              },

            ),
            
          ),
          
    );
  }
}
