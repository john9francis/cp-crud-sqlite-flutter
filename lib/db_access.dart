import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';


class DbAccess {

  static Database? theDb;

  Future<bool> connect() async {

    WidgetsFlutterBinding.ensureInitialized();

    print(await getDatabasesPath());
    
    return false;
  }

  Future<bool> create(String name, int number) async {
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