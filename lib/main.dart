import 'package:flutter/material.dart';
import 'package:uts_rafifaizalarkan/pages/Task1.dart';

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Task1());
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
