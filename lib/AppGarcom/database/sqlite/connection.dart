import 'dart:async';
import 'script.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database _db;

  static Future<Database> get() async {
    if (_db == null) {
      var path = join(await getDatabasesPath(), 'banco_dados');
      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v) {
          db.execute(DatabaseSql.criarTabelas);
        },
      );
    }
  }
}
