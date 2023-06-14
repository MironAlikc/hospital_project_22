import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/ui/first_screen.dart';
import 'package:hospital_project_22/ui/main_page/bottom_bar.dart';

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
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedLabelStyle: AppFonts.w500s10.copyWith(
            color: const Color(0xffA3A3A3),
          ),
        ),
      ),
      title: 'Flutter Demo',
      // home: FirstScreen(),
      // home: LoginScreen(),
      home: BottomBar(),
    );
  }
}
