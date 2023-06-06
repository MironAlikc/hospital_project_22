import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/models/profile_model.dart';

class ProfileWidgets extends StatelessWidget {
  const ProfileWidgets({
    super.key,
    required this.model,
  });

  final ProfileModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          model.image,
          height: 32,
        ),
        const SizedBox(width: 18),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.77,
          child: Text(
            model.text,
            style: AppFonts.w400s15,
          ),
        ),
      ],
    );
  }
}
