import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Força', 'assets/images/icone_forca.png', 4),
    Task('Vitalidade', 'assets/images/icone_vitalidade.png', 4),
    Task('Mana', 'assets/images/icone_mana.png', 3),
    Task('Arcano', 'assets/images/icone_arcano.png', 3),
    Task('Arco', 'assets/images/icone_arco.png', 2),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No Found');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
