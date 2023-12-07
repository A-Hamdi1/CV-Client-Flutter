import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/theme/helper_functions.dart';
import '../utils/theme/theme_provider.dart';
import '../widgets/button_widget.dart';
import '../widgets/skills_widgets.dart';

void main() => runApp(const SkillsPage());

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: darkMode ? Colors.black12 : Colors.white,
      body: const BodyPage(),
      appBar: AppBar(
        backgroundColor: darkMode ? Colors.black12 : Colors.white,
      ),
      floatingActionButton: CustomSpeedDial(),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/me.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Med Ali Zbaira",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "FullStack Devoloper",
                        style: TextStyle(
                            color: darkMode ? Colors.white : Colors.black87,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
            child: Container(
              child: Text(
                "I have acquired many skills over many years and here are some of them.",
                style: TextStyle(
                    color: darkMode ? Colors.white : Colors.black87,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: <Widget>[
                Text(
                  "Skills  ",
                  style: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                ),
                const Text(
                    "---------------------------------------------------------------"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Skills(),
        ],
      ),
    );
  }
}
