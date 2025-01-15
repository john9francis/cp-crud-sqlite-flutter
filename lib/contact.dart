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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(widget.name)
        ),
        Expanded(
          child: Text("${widget.number}")
        ),
        Expanded(
          child: TextButton(
            onPressed: (){
              print("Deleting");
            },
            child: Text("Delete"),
          ),
        )
      ],
    );
  }
}