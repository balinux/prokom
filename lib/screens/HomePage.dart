import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/screens/DetailPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => DetailPage());
              Navigator.push(context, route);
            },
            child: Text("Go to Detail Page")),
      ),
    );
  }
}
