import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'formScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQL Load Test Form',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FormScreen(),
    );
  }
}
