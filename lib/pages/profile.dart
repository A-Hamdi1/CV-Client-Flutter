import 'dart:ui';
import 'package:cv/pages/about.dart';
import 'package:cv/pages/skills.dart';
import 'package:flutter/material.dart';
import 'experience.dart';
import 'localisation.dart';
import 'projects.dart';
import '../constants/colors.dart';
import 'education.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const ProfileWidget(),
            scroll(),
          ],
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.09,
      maxChildSize: 0.41,
      minChildSize: 0.09,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Portfolio',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(context, Icons.school, 'Education'),
                        mySpec(context, Icons.work, 'Experience'),
                        mySpec(context, Icons.workspace_premium, 'Projects'),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(context, Icons.code, 'Skills'),
                        mySpec(context, Icons.person, 'About'),
                        mySpec(context, Icons.local_library, 'Localisation'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget mySpec(BuildContext context, IconData icon, String page) {
  return GestureDetector(
    onTap: () {
      if (page == 'Education') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EducationPage()));
      } else if (page == 'Experience') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ExperiencePage()));
      } else if (page == 'Projects') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProjectPage()));
      } else if (page == 'Skills') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SkillsPage()));
      } else if (page == 'About') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutPage()));
      } else if (page == 'Localisation') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LocalisationPage()));
      }
    },
    child: Container(
      width: 105,
      height: 115,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: mainText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                page,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
