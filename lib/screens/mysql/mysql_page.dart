import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:pemrograman_komputer/screens/mysql/mysql.dart';

class MysqlPage extends StatefulWidget {
  const MysqlPage({Key key}) : super(key: key);

  @override
  _MysqlPageState createState() => _MysqlPageState();
}

class _MysqlPageState extends State<MysqlPage> {
  // final connection = MySqlConnection.connect(ConnectionSettings(
  //     host: 'localhost',
  //     port: 3306,
  //     user: 'root',
  //     password: '',
  //     db: 'prokom_table'));

  Future<MySqlConnection> mysql() {
    final connection = MySqlConnection.connect(ConnectionSettings(
        host: '127.0.0.1',
        port: 3306,
        user: 'root',
        password: '',
        db: 'prokom'));
    return connection;
  }

  void _getUser() {
    mysql().then((conn) {
      String query = 'select * from prokom';
      conn.query(query).then((value) {
        print(value);
      });
      conn.close();
    });
  }

  var db = new Mysql();

  void _getCustomer() {
    db.getConnection().then((conn) {
      // String sql = 'select mail from company.customer where id = 10;';
      String sql = 'select * from prokom;';
      conn.query(sql).then((results) {
        for (var row in results) {
          // setState(() {
          //   mail = row[0];
          // });
        }
      });
      conn.close();
    });
  }

  @override
  void initState() {
    super.initState();
    // _getUser();
    _getCustomer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("center"),
      ),
    );
  }
}
