import 'package:flutter/material.dart';
import 'package:flutter_application_2/add.dart';
import 'package:flutter_application_2/list.dart';

class Screen extends StatelessWidget {
  const Screen({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.green[200],
            title: Text('TODO'),
            centerTitle: true),
        body: Column(
          children: [addtask(), const Expanded(child: list())],
        ));
  }
}
