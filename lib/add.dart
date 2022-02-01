import 'package:flutter/material.dart';
import 'package:flutter_application_2/dd.dart';
import 'package:flutter_application_2/ddf.dart';

class addtask extends StatelessWidget {
  addtask({Key key}) : super(key: key);

  final taskcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        TextField(
            controller: taskcontroller,
            decoration: InputDecoration(
                fillColor: Colors.green[200],
                labelText: "task",
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black)))),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              checktaskin();
            },
            child: Text('add'),
            style: ElevatedButton.styleFrom(primary: Colors.greenAccent))
      ]),
    );
  }

  void checktaskin() {
    final tasks = taskcontroller.text;

    print("$tasks ");
    final abc = TaskModel(task: tasks);

    addTask(abc);
  }
}
