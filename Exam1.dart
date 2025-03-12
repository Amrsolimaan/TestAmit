import 'dart:async';

class ToDoList {
  List<String> tasks = [];

  void addTask(String task) {
    tasks.add(task);
  }

  void removeTask(String task) {
    if (tasks.contains(task)) {
      tasks.remove(task);
      print("Task removed: $task");
    } else {
      print("Error: Task '$task' not found!");
    }
  }

  void showTasks() {
    for (var task in tasks) {
      print(task);
    }
  }

  Future<void> loadTasks() async {
    await Future.delayed(Duration(seconds: 2));
    if (tasks.isEmpty) {
      print("No data available");
    } else {
      print("Loaded tasks:");
      showTasks();
    }
  }

  Future<void> saveTasks() async {
    await Future.delayed(Duration(seconds: 2));
    print("Tasks saved");
  }
}

void main() async {
  var toDoList = ToDoList();

  toDoList.addTask("Study Dart");

  await toDoList.loadTasks();

  toDoList.addTask("Complete project");
  toDoList.removeTask("Task....45"); 
  toDoList.showTasks();

  await toDoList.saveTasks();
}
