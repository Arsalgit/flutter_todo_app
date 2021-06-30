import 'package:flutter/material.dart';
import 'package:flutter_todo_app/TodoApp.dart';

import 'TodoApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoApp());
  }
}
