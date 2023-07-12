/*import 'package:sqflite/sqflite.dart';

import '../../models/osago/response/discount_response.dart';
import '../../models/osago/response/relation_response.dart';

class DBHelper {
  static Database? _db;
  static const int _version = 1;
  static const String _tbRelation = "tb_relation";
  static const String _tbDiscount = "tb_discount";
  static const String _dbName = "kss2.db";

  static Future<void> initDB() async {
    if (_db != null) {
      return;
    }
    try {
      String path = await getDatabasesPath() + _dbName;
      _db = await openDatabase(
        path,
        version: _version,
        onCreate: (db, version) {
          print("creating a new db");
          db.execute(
            "create table $_tbDiscount ("
            "ID STRING, "
            "NAME STRING )",
          );
          return db.execute(
            "create table $_tbRelation ("
            "ID STRING, "
            "NAME STRING )",
          );
        },
      );
      print("succes yaratildi");
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insertRelation(RelationResponse relation) async {
    return await _db?.insert(_tbRelation, relation.toJson()) ?? -1;
  }

  static Future<List<Map<String, dynamic>>> getRelationList() async {
    print("getRelationList");
    return await _db!.query(_tbRelation);
  }

  static deleteRelation(RelationResponse model) async {
    print(model.toJson());
    await _db!.delete(_tbRelation, where: 'ID=?', whereArgs: [model.ID]);
  }

  static Future<List<Map<String, dynamic>>> getDiscountList() async {
    return await _db!.query(_tbDiscount);
  }

  static Future<int> insertDiscount(DiscountResponse discountResponse) async {
    return await _db?.insert(_tbRelation, discountResponse.toJson()) ?? -1;
  }

*//*static update(int id) async {
    return await _db!.rawUpdate(''' 
    UPDATE tasks
    SET isCompleted = ?
    WHERE id =?
    ''', [1, id]);
  }*//*
}*/
