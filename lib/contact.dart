import 'package:cp_crud/db_access.dart';
import 'package:flutter/material.dart';

/// This class is the contact card

class Contact extends StatefulWidget{
  final String name;
  final int number;
  final int id;

  const Contact({required this.id, required this.name, required this.number, super.key});

  @override
  State<StatefulWidget> createState() => _ContactState();
}

class _ContactState extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Text(widget.name)
          ),
          Expanded(
            flex: 2,
            child: Text("${widget.number}")
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                DbAccess.call(DbAccess.delete, [widget.id]);
              },
              child: Text("Delete"),
            ),
          )
        ],
      ),
    );
  }
}