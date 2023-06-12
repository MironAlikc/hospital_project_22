import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xffA3A3A3),
        selectedItemColor: const Color(0xff4A86CC),
        selectedLabelStyle: AppFonts.w700s10.copyWith(
          color: const Color(0xff4A86CC),
        ),
        unselectedLabelStyle: AppFonts.w500s10.copyWith(
          color: const Color(0xffA3A3A3),
        ),
        items: const [
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.abc,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.abc,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.abc,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.abc,
            ),
          ),
        ],
      ),  
    );
  }
}
