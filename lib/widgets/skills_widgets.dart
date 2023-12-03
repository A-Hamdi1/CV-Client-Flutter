import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillCard({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      shadowColor: Colors.black,
      child: Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : ((context.screenWidth * 0.7) / 3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: skills.map((skill) => SkillChip(skill)).toList(),
            ),
          ],

        ),

      ),

    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  final Color chipColor;
  final Color borderColor;

  const SkillChip(
      this.label, {
        this.chipColor = Colors.cyan,
        this.borderColor = Colors.cyan,
      });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
      ),
      labelStyle: TextStyle(
        color: chipColor,
      ),
      side: BorderSide(
        color: borderColor,
      ),
      backgroundColor: Colors.white,
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        SkillCard(
          title: "Front-End",
          skills: ["Flutter", "Javascript","Angular", "ReactJS", "NextJS", "VueJS", "HTML5", "CSS3", "Bootstrap"],
        ),
        SkillCard(
          title: "Back-End",
          skills: ["Spring Boot", "Java", "Kotlin", "Laravel", "NodeJS", "Python", "Django", "PHP", "ASP.NET"],
        ),
        SkillCard(
          title: "SGBD",
          skills: ["MySQL", "MariaDB", "PostgreSQL","MongoDB", "Firebase", ],
        ),

      ],

    );
  }
}
