import 'package:exam_flutter/src/screens/my_home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        //home: myHomePage(),
        initialRoute: "/",
        routes: {
          "/": (BuildContext context) => MyHomePage(),
        },
        home: Scaffold(
          appBar: AppBar(
            title: Text("Uso de AppBar"),
          ),
          body: Center(),
        ));
  }
}
