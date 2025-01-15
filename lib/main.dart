import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter contact's name"
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter contact's phone number"
                  ),
                ),
                TextButton(
                  child: Text("Add"),
                  onPressed: (){
                    print("Button presed");
                  }
                ), 
              ],
            )
          ],
        )
      ),
    );
  }
}