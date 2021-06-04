import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:exam_flutter/src/screens/my_home_page.dart';
// import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  // getCotizaciones() {
  //   var url = Uri.parse('http://localhost:3000/marcas');
  //   http.get(url).then((value) => (res) {
  //         // print(res);
  //         final body = jsonDecode(res.body);
  //         print(body);
  //       });
  // }

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
