import 'package:chat_app/screens/Homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFF075E54),
          hintColor: const Color(0xFF128C7E)),
      home: Homescreen(),
    );
  }
}
