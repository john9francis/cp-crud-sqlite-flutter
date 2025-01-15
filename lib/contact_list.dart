import 'package:flutter/material.dart';
import 'package:cp_crud/contact.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<StatefulWidget> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList>{

  final List<Contact> entries = List.generate(
    100, 
    (i)=> Contact());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return entries[index];
        }
      ),
    );
  }
}