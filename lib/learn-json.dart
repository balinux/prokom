import 'package:flutter/material.dart';
import 'package:pemrograman_komputer/services/file-service.dart';

class LearnJson extends StatefulWidget {
  const LearnJson({Key key}) : super(key: key);

  @override
  _LearnJsonState createState() => _LearnJsonState();
}

class _LearnJsonState extends State<LearnJson> {
  // String _jsonContent = "";
  String stringData;

  Future<void> openFIle() async {
    var data = await FileService().loadExampleJson();
    setState(() {
      stringData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Learn JSON",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      openFIle();
                    },
                    child: Text("Open/Read JSON File"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  stringData ?? "-",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
