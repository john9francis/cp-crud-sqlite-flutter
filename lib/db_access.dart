import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


class DbAccess {

  static Database? theDb;

  Future<bool> connect() async {

    WidgetsFlutterBinding.ensureInitialized();

    databaseFactory = databaseFactoryFfi;

    print("DB Path: ${await getDatabasesPath()}");
    
    return false;
  }

  Future<bool> create(String name, int number) async {
    print("Calling connect");
    if (theDb == null){
      await connect();
    }
    return false;
  }

  String read(int howMany){
    return "";
  }

  bool update(String name, String newName, int newNumber){
    return false;
  }

  bool delete(String name){
    return false;
  }
}