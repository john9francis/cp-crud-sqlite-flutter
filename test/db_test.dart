import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:cp_crud/db_access.dart';
// import 'package:sqflite/sqflite.dart';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main(){
  testWidgets("Testing database access", (tester) async {
    DbAccess db = DbAccess();

    if (Platform.isMacOS){
      databaseFactory = databaseFactoryFfi;
    }

    db.connect();
  });
}