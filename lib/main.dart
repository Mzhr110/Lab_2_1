import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\nTo-Do List App');
    print('1. Add a task');
    print('2. View tasks');
    print('3. Remove a task');
    print('4. Exit');
    stdout.write('Choose an option: ');

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        addTask(tasks);
        break;
      case '2':
        viewTasks(tasks);
        break;
      case '3':
        removeTask(tasks);
        break;
      case '4':
        print('Goodbye!');
        return;
      default:
        print('Invalid option. Please choose 1, 2, 3, or 4.');
    }
  }
}

void addTask(List<String> tasks) {
  stdout.write('Enter the task: ');
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    tasks.add(task);
    print('Task added.');
  } else {
    print('Task cannot be empty.');
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks available.');
  } else {
    print('\nYour Tasks:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}

void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks to remove.');
    return;
  }

  viewTasks(tasks);
  stdout.write('Enter the task number to remove: ');

  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? '');

  if (index == null || index < 1 || index > tasks.length) {
    print('Invalid task number.');
  } else {
    print('Removed: ${tasks.removeAt(index - 1)}');
  }
}
