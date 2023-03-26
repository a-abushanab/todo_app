import 'package:flutter/material.dart';
import 'package:todo_app/data/task_list.dart';

class LargeScreenTask extends StatelessWidget {
  const LargeScreenTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Go To Screen One"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Go To Screen Two"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tasks.map((e) => Container(
              child: Container(
                width: 300,
                color: Colors.teal,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.name),
                    Icon(Icons.delete),
                  ],
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
