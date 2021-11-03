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

class _MyAppState extends State<MyApp> {
  String name = 'putu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Navigasi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => ProfilePage());
            Navigator.push(context, route);
          },
          child: Text("tes")
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali ke Beranda'),
        ),
      ),
    );
  }
}