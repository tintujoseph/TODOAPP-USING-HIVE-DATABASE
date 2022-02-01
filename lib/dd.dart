import 'package:hive/hive.dart';

part 'dd.g.dart';

@HiveType(typeId: 1)
class TaskModel {
  @HiveField(0)
  int id;
  @HiveField(1)
  final  String  task;

  // ignore: type_init_formals
  TaskModel({this.id,  this.task});
}
