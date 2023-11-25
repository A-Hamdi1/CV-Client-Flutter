import 'package:cv/models/project_model.dart';
import 'package:cv/widgets/category_slider.dart';
import 'package:cv/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Med Ali Zbaira"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/img/icons/profile1.png",
                width: 25,
                height: 35,
                color: Colors.grey,
              ),
            ),
          ),
        ],
        toolbarHeight: 60,
        toolbarOpacity: 1.0,
        bottomOpacity: 1.0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleSpacing: 10,
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Projects",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => ProjectCard(
                    project: project[index],
                  ),
                  itemCount: project.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
