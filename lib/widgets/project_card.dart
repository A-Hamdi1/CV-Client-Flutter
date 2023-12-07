import 'package:Portfolio/models/project_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../utils/theme/helper_functions.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Container(
      decoration: BoxDecoration(
        color: darkMode ? Colors.black54 : Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Color(0x1a5282FF),
          )
        ],
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              project.imageFileName,
              width: 150,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    project.caption,
                    style: TextStyle(
                      color: darkMode ? Colors.white70 : kprimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    project.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 13,
                        color:
                            darkMode ? Colors.white70 : Colors.grey.shade900),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 5),
                          SvgPicture.asset(
                            project.icon1,
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset(
                            project.icon2,
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset(
                            project.icon3,
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(width: 8),
                          SvgPicture.asset(
                            project.icon4,
                            width: 25,
                            height: 25,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            project.isBookmarked
                                ? CupertinoIcons.bookmark_fill
                                : CupertinoIcons.bookmark,
                            size: 16,
                            color: kgreyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
