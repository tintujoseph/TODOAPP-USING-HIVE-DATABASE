import 'package:flutter/material.dart';
import 'package:flutter_application_2/dd.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<TaskModel>> tasklistNotifier = ValueNotifier([]);
Future<void> addTask(TaskModel value) async {
  final taskdb = await Hive.openBox<TaskModel>('task_db');
  final _id = await  taskdb.add(value);

  value.id = _id;
  tasklistNotifier.value.add(value);
  tasklistNotifier.notifyListeners();
}

Future<void> getTask() async {
  final taskdb = await Hive.openBox<TaskModel>('task_db');

  tasklistNotifier.value.clear();
  tasklistNotifier.value.addAll(taskdb.values);
  tasklistNotifier.notifyListeners();
}

Future<void> delet(id) async {
  final taskdb = await Hive.openBox<TaskModel>('task_db');
  await taskdb.delete(id);
  getTask();
}
