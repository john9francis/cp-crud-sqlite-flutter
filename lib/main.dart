import 'package:flutter/material.dart';
import 'package:cp_crud/new_contact_form.dart';
import 'package:cp_crud/contact_list.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        body: Column(
          children: [
            NewContactForm(),
            ContactList()
          ],
        )
      )
    );
  }
}