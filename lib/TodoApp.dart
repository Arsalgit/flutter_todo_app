import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> lst = ["1", "2", "3"];
    return Container(
        color: Colors.black,
        child: ListView.builder(
            itemCount: lst.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: ListTile(
                  title: Text("${lst[index]}"),
                ),
              );
            }));
  }
}
