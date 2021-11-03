import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'prokom',
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
