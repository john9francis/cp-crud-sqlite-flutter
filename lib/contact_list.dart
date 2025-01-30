import 'package:cp_crud/db_access.dart';
import 'package:flutter/material.dart';
import 'package:cp_crud/contact.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> entries = [];

  @override
  void initState() {
    super.initState();
    _loadEntries();
    DbAccess.subscribe(DbAccess.create, _loadEntries);
  }

  Future<void> _loadEntries() async {
    List<List<String>>? dbEntries = await DbAccess.read();
    if (dbEntries == null) return;

    List<Contact> newContacts = dbEntries.map((entry) {
      return Contact(name: entry[0], number: int.parse(entry[1]));
    }).toList();

    setState(() {
      entries = newContacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return entries[index];
        },
      ),
    );
  }
}
