import 'package:flutter/material.dart';
import 'package:yemeksepeti/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemeksepeti / BaranAli',
      debugShowCheckedModeBanner: false,
      color: Color.fromARGB(255, 255, 15, 15),
      theme: ThemeData(primaryColor: Color.fromRGBO(183, 28, 28, 1)),
      home: Home(),
    );
  }
}
