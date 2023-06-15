import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/ui/first_screen.dart';
import 'package:hospital_project_22/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedLabelStyle: AppFonts.w500s10.copyWith(
            color: const Color(0xffA3A3A3),
          ),
        ),
      ),
      title: 'Flutter Demo',
      home: const SpalashScreen(),
    );
  }
}
