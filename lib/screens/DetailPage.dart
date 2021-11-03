import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/screens/HomePage.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Route route = MaterialPageRoute(builder: (context) => Homepage());
              // Navigator.push(context, route);

              Navigator.pop(context);
            },
            child: Text("Back to home")),
      ),
    );
  }
}
