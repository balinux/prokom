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
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
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
