import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/core/common_widgets/app_button.dart';
import 'package:hospital_project_22/core/common_widgets/profile_widgets.dart';
import 'package:hospital_project_22/models/profile_model.dart';
import 'package:hospital_project_22/resources/resources.dart';
import 'package:hospital_project_22/ui/login_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<ProfileModel> models = [
    ProfileModel(
      image: Images.hospital,
      text: 'Записывайтесь на прием к самым лучшим специалистам',
    ),
    ProfileModel(
      image: Images.board,
      text:
          'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
    ),
    ProfileModel(
      image: Images.speech,
      text:
          'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
    ),
    ProfileModel(
      image: Images.bell,
      text: 'Получайте уведомления о приеме или о поступивших сообщениях',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //centerTitle: false,
        title: const Text(
          'Профиль',
          style: AppFonts.w600s17,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Зачем нужен профиль?',
              style: AppFonts.w500s22,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: models.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ProfileWidgets(
                  model: models[index],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: AppButton(
                title: 'Войти',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
