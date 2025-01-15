import 'package:flutter/material.dart';

class NewContactForm extends StatefulWidget {
  const NewContactForm({super.key});

  @override
  State<StatefulWidget> createState() => _NewContactFormState();
}

class _NewContactFormState extends State<NewContactForm>{
  
  // Controllers for the 2 inputs
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  
  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              spacing: 5,
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter contact's name"
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: numberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter contact's phone number"
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: Text("Add"),
                    onPressed: (){
                      print("Button presed");
                    }
                  ),
                ), 
              ],
            ),
          )
        ],
      )
    );
  }
}