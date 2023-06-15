import 'package:flutter/material.dart';
import 'package:hospital_project_22/ui/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('isLogined', false);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SpalashScreen(),
              ),
            );
          },
          child: const Text('Выйти'),
        ),
      ),
    );
  }
}
