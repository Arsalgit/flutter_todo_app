import 'package:flutter/material.dart';
import 'package:flutter_todo_app/TodoApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("ToDo App Example"),
            ),
            body: TodoApp(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Add Item"),
                        content: TextField(
                          onChanged: (value) {},
                        ),
                      );
                    });
              },
              child: Icon(Icons.add),
            )));
  }
}
