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
          appBar: AppBar(
            title: Text("AppBar Title"),
            backgroundColor: Colors.purple[100],
            elevation: 5.0,
            centerTitle: true,
            actions: <Widget>[
              Icon(Icons.mic),
              Icon(Icons.camera)
            ],
            brightness: Brightness.dark,
            
            
            //This changes the icon for the "drawer".  You can only have one icon for the
            // drawer and it defaults to a menu icon.  The endDrawer, however, can have many icons.
            //Commenting this out will result in restoring the menu icon.
            //leading:  Icon(Icons.speaker),
          ),
          
          // set some parameters and textfor the scaffold body
          backgroundColor: Colors.purple[50],
          body: Text("Scaffold Body:  Hello"),
          
          // add a drawer on the left.  
          drawer: Drawer(
            child: Text("I am the drawer"),
          ),
          
          // Add a drawer on the right.  
          endDrawer:  Drawer(
            child: Text("I am the endDrawer"),
            
          ),
          
          // Add a floating action button w/a + icon
          floatingActionButton: FloatingActionButton(
            onPressed:  (){},
            child:  Icon(Icons.add), backgroundColor: Colors.black26
            
          ),
          
          // The bottom sheet is the lower most part of the application
          bottomSheet: BottomSheet(
            onClosing: () {},
            builder:  (BuildContext context) {
              return Container(
                child: Text("BottomSheet: Hello"),
              );
            },
          ),
          
          // Add a navigation bar to the bottom of the app's scaffold.
          bottomNavigationBar:  BottomNavigationBar(
            fixedColor: Colors.yellow,
            currentIndex: 2,
            items: [
              BottomNavigationBarItem(
                icon:  Icon(Icons.home),
                title: Text("Home")
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.bluetooth),
                title: Text("bluetooth")
              ),
              BottomNavigationBarItem(
                icon:  Icon(Icons.library_books),
                title: Text("Library Books")
              ),
            ],
          )
        )
    );
  }
}
