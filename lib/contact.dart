import 'package:flutter/material.dart';

class Contact extends StatefulWidget{
  const Contact({super.key});

  @override
  State<StatefulWidget> createState() => _ContactState();
}

class _ContactState extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Hey")
      ],
    );
  }
}