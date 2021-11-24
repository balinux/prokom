import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/learn-http-request.dart';
import 'package:pemrograman_komputer/learn-json.dart';
import 'package:pemrograman_komputer/providers/CartProvider.dart';
import 'package:pemrograman_komputer/screens/DetailPage.dart';
import 'package:provider/src/provider.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => LearnJson());
                  Navigator.push(context, route);
                },
                child: Text("Learn Json")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => LearnHttpRequest());
                  Navigator.push(context, route);
                },
                child: Text("Learn Http Request")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                child: Text("Go to Detail Page")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  context.read<Cart>().addecmommerceCart(1);
                },
                child: Text("tambah belanja")),
          ),
          Text('${context.watch<Cart>().getEcommerceCart}')
        ],
      ),
    );
  }
}
