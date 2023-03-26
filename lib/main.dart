import 'package:flutter/material.dart';
import 'package:todo_app/screen/large_screen_task.dart';
import 'package:todo_app/screen/small_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsievTest(),
    );
  }
}

class ResponsievTest extends StatelessWidget {
  const ResponsievTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 400 ? SmallTaskScreen() : LargeScreenTask();
  }
}


