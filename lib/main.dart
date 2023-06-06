import 'package:flutter/material.dart';
import 'package:hospital_project_22/ui/first_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: FirstScreen(),
      // home: LoginScreen(),
    );
  }
}
