import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/core/common_widgets/app_button.dart';
import 'package:hospital_project_22/ui/main_page/create_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckCodePage extends StatefulWidget {
  const CheckCodePage({super.key, required this.code});

  final int code;

  @override
  State<CheckCodePage> createState() => _CheckCodePageState();
}

class _CheckCodePageState extends State<CheckCodePage> {
  Function()? onPressed;
  String? errorText;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Подтверждение номера',
          style: AppFonts.w600s17,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff007AFF),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const Text(
              'Введите код из смс',
              style: AppFonts.w500s22,
            ),
            const SizedBox(height: 140),
            TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              onChanged: (value) {
                if (value == widget.code.toString() || value.isEmpty) {
                  if (value == widget.code.toString()) {
                    onPressed = () async {
                      final prefs = await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateProfile(
                            prefs: prefs,
                          ),
                        ),
                      );
                    };
                  }
                  errorText = null;
                  setState(() {});
                } else {
                  onPressed = null;
                  errorText = 'Неверный код';
                  setState(() {});
                }
              },
              textAlign: TextAlign.center,
              obscureText: true,
              obscuringCharacter: '*',
              maxLength: 4,

              // style: AppFonts.w700s17,
              decoration: InputDecoration(
                errorText: errorText,
                prefixIcon: const Text(
                  'Код',
                  style: AppFonts.w600s18,
                ),
                suffix: InkWell(
                  onTap: () {
                    controller.text = '';
                    errorText = null;
                    setState(() {});
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 17.2,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      widget.code.toString(),
                    ),
                  ),
                );
              },
              child: Text(
                'Получить код повторно',
                style: AppFonts.w400s15.copyWith(
                  color: Colors.blue,
                ),
              ),
            ),
            const Spacer(),
            AppButton(title: 'Далее', onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}
