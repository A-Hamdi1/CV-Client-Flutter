// education_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../models/education_model.dart';
import '../utils/theme/helper_functions.dart';
import '../utils/theme/theme_provider.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    List<EducationModel> educationModels = [
      EducationModel(
        title: "Higher Institute of Technological Studies of Sfax",
        description: "Second Year in Computer Science",
        periode: "September 2022 - June 2023",
        imagePath: 'assets/images/iset_sfax.png',
      ),
      EducationModel(
        title: "Higher Institute of Technological Studies of Mednine",
        description: "First Year in Computer Science",
        periode: "September 2021 - June 2022",
        imagePath: 'assets/images/iset_mednine.png',
      ),
      EducationModel(
        title: "Ali Bourguiba High School, Mahres",
        description: "4th Year Technical Stream (Bac Technique)",
        periode: "September 2020 - June 2021",
        imagePath: 'assets/images/lycee.png',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        toolbarHeight: 60, // Use toolbarHeight instead of height
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[200],
            ),
            child: ListView(
              children: educationModels.map((educationModel) {
                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            educationModel.imagePath,
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 15, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  educationModel.title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(height: 10),
                                Text(
                                  educationModel.periode,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                                Container(height: 10),
                                Text(
                                  educationModel.description,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                );
              }).toList(),
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
