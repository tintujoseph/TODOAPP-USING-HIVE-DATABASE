import 'package:flutter/material.dart';
import 'package:flutter_application_2/dd.dart';
import 'package:flutter_application_2/ddf.dart';

class list extends StatelessWidget {
  const list({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: tasklistNotifier,
        builder:
            (BuildContext context, List<TaskModel> tasklist, Widget child) {
          return ListView.separated(
              itemBuilder: (context, index) {
                final data = tasklist[index];
                return Container(
                    color: Colors.green[200],
                    height: 60,
                    child: ListTile(
                        title: Text(data.task),
                        trailing: IconButton(
                            onPressed: () {
                              if (data.id != null) {
                                delet(data.id);
                              }
                            },
                            icon: Icon(Icons.delete, color: Colors.green))));
              },
              separatorBuilder: (context, index) {
                return Divider(height: 3, color: Colors.white);
              },
              itemCount: tasklist.length);
        });
  }
}
