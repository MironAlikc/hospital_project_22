import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/core/common_widgets/app_button.dart';
import 'package:hospital_project_22/ui/main_page/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key, required this.prefs});

  final SharedPreferences prefs;
  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final TextEditingController name = TextEditingController();
  final TextEditingController surName = TextEditingController();

  String nameText = '';

  @override
  Widget build(BuildContext context) {
    nameText = widget.prefs.getString('name') ?? '';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: const Text(
          'Создания профиля',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Имя',
              style: AppFonts.w400s15,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: name,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: 'Ввудите ваше имя',
                hintStyle: AppFonts.w400s15.copyWith(
                  color: const Color(0xffAFAFAF),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Фамилия',
              style: AppFonts.w400s15,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: surName,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: 'Ввудите вашу фамилию',
                hintStyle: AppFonts.w400s15.copyWith(
                  color: const Color(0xffAFAFAF),
                ),
              ),
            ),
            Text(
              nameText,
              style: AppFonts.w700s34,
            ),
            const Spacer(),
            Center(
              child: AppButton(
                title: 'Далее',
                onPressed: () async {
                  await widget.prefs.setString('name', name.text);
                  await widget.prefs.setString('surName', surName.text);
                  await widget.prefs.setBool('isLogined', true);
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomBar(prefs: widget.prefs),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
