import 'package:cp_crud/db_access.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
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
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Text("Add"),
                  onPressed: () {
                    // add to the database
                    String name = nameController.text;
                    int number = int.parse(numberController.text);
                    DbAccess.call(DbAccess.create, [name, number]);

                    // clear out the current values
                    nameController.clear();
                    numberController.clear();
                  }
                ),
              ), 
            ],
          ),
        )
      ],
    );
  }
}