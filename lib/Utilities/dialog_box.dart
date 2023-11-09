import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ToDoAppChiheb/Utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({Key? key, required this.controller, required this.onSave, required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            //Buttons => Save and Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Save Button
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8,),
                //Cancel Button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
