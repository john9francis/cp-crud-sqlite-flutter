import 'package:flutter/material.dart';

class Contact extends StatefulWidget{
  final String name;
  final int number;

  const Contact({required this.name, required this.number, super.key});

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
              onPressed: (){
                print("Deleting");
              },
              child: Text("Delete"),
            ),
          )
        ],
      ),
    );
  }
}