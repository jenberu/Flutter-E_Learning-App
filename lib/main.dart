import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const ElearningApp());
}

class ElearningApp extends StatelessWidget {
  const ElearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning App',
      theme: ThemeData(
        // buttonColor: Colors.red, // Color of a RaisedButton
        focusColor: Colors.white, // Color when a widget is focused
//selectedRowColor: Colors.orange,
        primaryColor: Colors.green,
//accentColor: Colors.red,

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
