import 'package:flutter/material.dart';
import 'package:hospital_project_22/core/app_fonts.dart';
import 'package:hospital_project_22/resources/resources.dart';
import 'package:hospital_project_22/ui/main_page/profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> body = [
    const ProfilePage(),
    const MyWidget(index: 1),
    const MyWidget(index: 2),
    const MyWidget(index: 3),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Страница в разработке'),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          );
        },
        child: Container(
          height: 64,
          width: 64,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.car,
                height: 32,
              ),
              Text(
                'Вызов',
                style: AppFonts.w600s17.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        unselectedItemColor: const Color(0xffA3A3A3),
        selectedItemColor: const Color(0xff4A86CC),
        selectedLabelStyle: AppFonts.w700s10.copyWith(
          color: const Color(0xff4A86CC),
        ),
        //unselectedLabelStyle:
        items: const [
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.account_circle_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.featured_play_list_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.list_alt_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'ASdasda',
            icon: Icon(
              Icons.man_sharp,
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          index.toString(),
          style: AppFonts.w700s34,
        ),
      ),
    );
  }
}
