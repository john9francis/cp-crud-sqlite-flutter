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
      children: [
        Text("${widget.name} ${widget.number}")
      ],
    );
  }
}