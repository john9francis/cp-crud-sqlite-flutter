import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


// singleton

class DbAccess {

  static Database? theDb;

  static Map<Function, Function> subscriptions = {};

  static void subscribe(Function fn, Function callbackFn){
    subscriptions[fn] = callbackFn;
  }

  /// Now supports async functions
  static Future<void> call(Function fn, [List<dynamic>? args]) async {
    
    dynamic fnResult = Function.apply(fn, args);

    if (fnResult is Future){
      await fnResult;
    }

    // run any result from the subscriptions
    if (subscriptions.containsKey(fn)){
      var subResult = subscriptions[fn]!();
      if (subResult is Future){
        await subResult;
      }
    }

  }

  static Future<bool> connect() async {

    WidgetsFlutterBinding.ensureInitialized();

    databaseFactory = databaseFactoryFfi;

    print("DB Path: ${await getDatabasesPath()}");

    try {

      theDb = await openDatabase(
        join(await getDatabasesPath(), 'contacts.db'),
        onCreate: (db, version) {
          db.execute(
            """CREATE TABLE contacts (
              id INTEGER PRIMARY KEY,
              name TEXT,
              number INTEGER
            );"""
          );
        },
        version: 1
        );
      return true;

    } catch (err){

      print("Error connecting to db: $err");
      return false;
    }
  }

  static Future<bool> create(String name, int number) async {
    try {
      await theDb!.insert("contacts", {
        "name": name,
        "number": number,
      });
      return true;
    }
    catch (err) {
      print("Error creating: $err");
      return false;
    }
  }

  /// Returns a list of [id:int, name:String, number:int] lists which could be null.
  static Future<List<List<dynamic>>?> read({int howMany=100}) async {
    try {

      List<Map<String, Object?>> contactMaps = await theDb!.query("contacts");

      // casting to int, string, int
      List<List<dynamic>> contactList = contactMaps.map((element){
        return [int.parse(element["id"].toString()), element["name"].toString(), int.parse(element["number"].toString())];
      }).toList();

      return contactList;
    }
    catch (err){
      print("Error reading: $err");
      return null;
    }
  }

  static bool update(String name, String newName, int newNumber){
    return false;
  }

  static Future<bool> delete(int id) async {
    try{
      await theDb!.delete(
        "contacts", 
        where: "id = ?",
        whereArgs: [id]);
      return true;
    }
    catch(err){
      print("Error deleting: $err");
      return false;
    }
  }
}