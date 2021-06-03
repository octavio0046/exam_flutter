import 'package:flutter/material.dart';
import 'package:exam_flutter/src/screens/my_home_page.dart';

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
    );
  }
}
