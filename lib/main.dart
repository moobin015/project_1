import 'package:flutter/material.dart';
import 'package:project_1/screen_one/screen_one.dart';

void main() {
  runApp(const ToDoApplication());
}

class ToDoApplication extends StatelessWidget {
  const ToDoApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}
