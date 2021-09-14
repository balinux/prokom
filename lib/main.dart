import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// appbar scaffoeld
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("pemrograman Komputer"),
      ),
      body: Container(
        child: Center(
          child: Text('belajar dasar flutter'),
        ),
      ),
    ));
  }
}
