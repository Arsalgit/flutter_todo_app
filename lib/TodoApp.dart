import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    var output = "";
    List<dynamic> lst = ["1", "2", "3"];
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo App"),
        ),
        body: Container(
            color: Colors.black,
            child: ListView.builder(
                itemCount: lst.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: ListTile(
                      title: Text("${lst[index]}"),
                      trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              lst.remove(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                    ),
                  );
                })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Add Item"),
                    content: TextField(
                      onChanged: (value) {
                        output = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              lst.add(output);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Add"))
                    ],
                  );
                });
          },
          child: Icon(Icons.add),
        ));
  }
}
