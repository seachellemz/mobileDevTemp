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
    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      /*
        This is how you address the them of your application 
      */
      theme: ThemeData(
          // Use the old theme but apply the following three changes
            textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Open Sans',
                bodyColor: Colors.white,
                displayColor: Colors.white)),
      home: Scaffold (
      
      // Expandec an be applied to columns or rows.  Uncomment the
      // following to show the impact it has on a column.  
      //body: Column (
        body: Container(
          alignment:  AlignmentDirectional.center,
          child: Text("Hello"),
          
          /* A color attribute must be inside a decoration if 
             a decoration is used...so this one is commented out.
          */
          //color: Colors.purple[50],
          //padding:  EdgeInsets.all(40.0),
          margin:  EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            // to Add an image to your container
            image:  DecorationImage(image: 
             AssetImage("images/top-bg-mimiskitchen.png"))
              )
            //gradient:  RadialGradient(
            //gradient:  LinearGradient(
             // colors: [Colors.purple[300], Colors.purple[50]]
            )
      ),
              
    );
    
  }
}
