import 'package:flutter/material.dart';
import 'package:hospital_project_22/ui/first_screen.dart';
import 'package:hospital_project_22/ui/main_page/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({super.key});

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    routing();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold();
  }

  void routing() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('isLogined') ?? false) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomBar(prefs: prefs),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      );
    }
  }
}
