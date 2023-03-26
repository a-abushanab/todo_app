import 'package:flutter/material.dart';
import 'package:todo_app/data/task_list.dart';

class SmallTaskScreen extends StatelessWidget {
  const SmallTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: (){
              print(MediaQuery.of(context).size.width);
            },
            contentPadding: EdgeInsets.all(0),
            title: Text('${tasks[index].name}'),
            trailing: Icon(Icons.delete_rounded),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Housam"),
              accountEmail: Text("housam@email.com"),
            ),
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
      ),
    );
  }
}
