import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// appbar scaffoeld
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

// check status state app saat inactive
    if (state == AppLifecycleState.inactive) {
      print("====== INACTIVE =======");
    } else if (state == AppLifecycleState.paused) {
      print("====== PAUSED =======");
    } else if (state == AppLifecycleState.resumed) {
      print("====== RESUMED =======");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Pemrograman Komputer dan Mobile",
          style: TextStyle(
              color: Colors.blue, 
              fontSize: 24, 
              fontStyle: FontStyle.italic
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text('belajar dasar flutter'),
        ),
      ),
    ));
  }
}
