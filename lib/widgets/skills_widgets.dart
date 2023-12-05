import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final List<SkillData> skills;

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
  final SkillData skill;

  const SkillChip(this.skill);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (skill.icon != null)
            SvgPicture.asset(
              'assets/frameworks/${skill.icon}.svg',
              width: 24,
              height: 24,
            ),
          if (skill.icon != null) const SizedBox(width: 4),
          Text(
            skill.label,
            style: TextStyle(
              color: skill.chipColor,
            ),
          ),
        ],
      ),
      side: BorderSide(
        color: skill.borderColor,
      ),
      backgroundColor: Colors.white,
    );
  }
}

class SkillData {
  final String label;
  final String? icon;
  final Color chipColor;
  final Color borderColor;

  SkillData(
      this.label, {
        this.icon,
        this.chipColor = Colors.cyan,
        this.borderColor = Colors.cyan,
      });
}

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        SkillCard(
          title: "Front-End",
          skills: [
            SkillData("Flutter", icon: "flutter", chipColor: Colors.blueGrey),
            SkillData("Javascript", icon: "javascript", chipColor: Colors.blueGrey),
            SkillData("Angular", icon: "angular", chipColor: Colors.blueGrey),
            SkillData("ReactJS", icon: "react", chipColor: Colors.blueGrey),
            SkillData("VueJS", icon: "vuejs", chipColor: Colors.blueGrey),
            SkillData("HTML5", icon: "html5", chipColor: Colors.blueGrey),
            SkillData("CSS3", icon: "css3", chipColor: Colors.blueGrey),
            SkillData("Bootstrap", icon: "bootstrap", chipColor: Colors.blueGrey),
          ],
        ),
        SkillCard(
          title: "Back-End",
          skills: [
            SkillData("Java", icon: "java", chipColor: Colors.blueGrey),
            SkillData("Python", icon: "python", chipColor: Colors.blueGrey),
            SkillData("Kotlin", icon: "kotlin", chipColor: Colors.blueGrey),
            SkillData("Laravel", icon: "laravel", chipColor: Colors.blueGrey),
            SkillData("NodeJS", icon: "nodejs", chipColor: Colors.blueGrey),
            SkillData("Django", icon: "django", chipColor: Colors.blueGrey),
            SkillData("PHP", icon: "php", chipColor: Colors.blueGrey),
            SkillData("ASP.NET", icon: "net", chipColor: Colors.blueGrey),
          ],
        ),
        SkillCard(
          title: "SGBD",
          skills: [
            SkillData("MySQL", icon: "mysql", chipColor: Colors.blueGrey),
            SkillData("PostgreSQL", icon: "postgresql", chipColor: Colors.blueGrey),
            SkillData("MongoDB", icon: "mongodb", chipColor: Colors.blueGrey),
            SkillData("MariaDB", icon: "mariadb", chipColor: Colors.blueGrey),
            SkillData("Firebase", icon: "firebase", chipColor: Colors.blueGrey),
            SkillData("SQLite", icon: "sqlite", chipColor: Colors.blueGrey),
          ],
        ),
      ],
    );
  }
}
