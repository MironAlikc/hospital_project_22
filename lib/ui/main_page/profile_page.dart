import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.name,
    required this.surName,
  });

  final String name;
  final String surName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          'Мой профиль',
          style: AppFonts.w700s34,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Text(
                    '${name[0]} ${surName[0]}  ',
                    style: AppFonts.w700s34,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
