import 'package:flutter/material.dart';
import 'package:cp_crud/new_contact_form.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts",
      home: NewContactForm()
    );
  }
}