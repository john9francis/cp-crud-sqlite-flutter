import 'package:flutter_test/flutter_test.dart';
import 'package:cp_crud/db_access.dart';
// import 'package:sqflite/sqflite.dart';


void main(){
  group("Testing database access: ", (){
    test("Connecting to database: ", () async {
      DbAccess db = DbAccess();



      db.connect();
    });
  });
}