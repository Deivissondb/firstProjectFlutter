// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> TaskList = [
    Task(
      'Aprender programação',
      'assets/images/programation.jpg',
      5,
    ),
    Task(
      'Aprender a formatar PC',
      'assets/images/formatting.jpg',
      3,
    ),
    Task(
      'Aprender a cozinhar',
      'assets/images/cook.jpg',
      3,
    ),
    Task(
      'Fazer ginástica',
      'assets/images/to_exercise.jpeg',
      3,
    ),
    Task(
      'Estudar',
      'assets/images/studying.jpg',
      2,
    ),
    Task(
      'Trabalhar',
      'assets/images/work.jfif',
      4,
    ),
    Task(
      'Viajar',
      'assets/images/travel.jpg',
      1,
    ),
  ];

  void newTask(String name, String photo, int difficulty) {
    TaskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.TaskList.length != TaskList.length;
  }
}
