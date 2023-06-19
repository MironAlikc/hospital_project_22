import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
    required this.name,
    required this.surName,
  });

  final String name;
  final String surName;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  XFile? img;
  File? pickedImage;

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
                  child: img == null
                      ? Text(
                          '${widget.name[0]} ${widget.surName[0]}  ',
                          style: AppFonts.w700s34,
                        )
                      : Image.file(
                          File(img!.path),
                        ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        pickImage();
                      },
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

  Future<void> pickImage() async {
    img = await ImagePicker().pickImage(source: ImageSource.gallery);

    // pickedImage = File(img!.path);
    setState(() {});
  }
}
