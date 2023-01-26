import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Todo {
  final String? task;
  final bool isCompleted;

  Todo({this.task, this.isCompleted = false});
}

class TodoListModel extends ChangeNotifier {
  final List<Todo> _todoList = [];

  List<Todo> get todoList => _todoList;

  void addTodo(Todo todo) {
    _todoList.add(todo);
    notifyListeners();
  }

  void toggleTodo(Todo todo) {
    final index = _todoList.indexOf(todo);
    _todoList[index] = Todo(task: todo.task, isCompleted: !todo.isCompleted);
    notifyListeners();
  }
}


class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<TodoListModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: model.todoList.length,
        itemBuilder: (context, index) {
          final todo = model.todoList[index];
          return ListTile(
            title: Text("${todo.task}"),
            trailing: Checkbox(
              value: todo.isCompleted,
              onChanged: (newValue) {
                model.toggleTodo(todo);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final newTodo = Todo(task: 'New Todo');
          model.addTodo(newTodo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
