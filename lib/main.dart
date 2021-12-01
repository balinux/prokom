import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/providers/CartProvider.dart';
import 'package:pemrograman_komputer/screens/HomePage.dart';
import 'package:pemrograman_komputer/screens/map/learn_map.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(MyApp());
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Cart())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'prokom',
      // home: Homepage(),
      home: LearnMap(),
      debugShowCheckedModeBanner: false,
    );
  }
}
