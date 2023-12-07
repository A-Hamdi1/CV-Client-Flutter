import 'package:Portfolio/models/project_model.dart';
import 'package:Portfolio/widgets/category_slider.dart';
import 'package:Portfolio/widgets/project_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/theme/helper_functions.dart';
import '../utils/theme/theme_provider.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkMode ? Colors.black54 : Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  "My Projects",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                const CategorySlider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Projects",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => ProjectCard(
                    project: project[index],
                  ),
                  itemCount: project.length,
                ),
              ],
            ),
          ),

        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        },
        child: Icon(
          Icons.brightness_4,
          color: Colors.white,
        ),
        backgroundColor: darkMode ? Colors.lightBlue : Colors.grey,
      ),
    );
  }
}
