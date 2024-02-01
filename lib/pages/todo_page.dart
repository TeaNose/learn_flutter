import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController textEditingController = TextEditingController();

  String greet = "";

  void greetUser() {
    setState(() {
      greet = 'Hello ' + textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(greet),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Input your name here ..."),
            ),
            ElevatedButton(onPressed: greetUser, child: Text('Save'))
          ]),
        ),
      ),
    );
  }
}
