import 'package:flutter/material.dart';
import 'package:w13/todo.dart';
import 'package:w13/todo_service.dart';

class AddOrUpdate extends StatelessWidget {
  TodoServiceManager service = TodoServiceManager();

  AddOrUpdate([this.todo = null]) {
    if (todo != null) {
      titleController.text = todo!.title;
    }
  }

  Todo? todo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (todo == null) {
                          service.addTodo(Todo(userId: 2, id: 1, title: titleController.text,
                           completed: false));
                        } else {
                          await service.updateTodo(Todo(
                            userId: 2,
                            id:1,
                            title:titleController.text;

                          ))
                        }

                        Navigator.pop(context);
                      },
                      child: todo == null ? Text("Save") : Text("Update")),
                ],
              ))),
    );
  }
}
