// education_page.dart
import 'package:flutter/material.dart';
import '../models/education_model.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EducationModel> educationModels = [
      EducationModel(
        title: "Année 1",
        description: "Your card text goes here.",
        imagePath: 'assets/images/welcome.png',
      ),
      EducationModel(
        title: "Année 2",
        description: "Your card text goes here.",
        imagePath: 'assets/images/welcome.png',
      ),
      EducationModel(
        title: "Année 3",
        description: "Your card text goes here.",
        imagePath: 'assets/images/welcome.png',
      ),
      EducationModel(
        title: "Année 4",
        description: "Your card text goes here.",
        imagePath: 'assets/images/welcome.png',
      ),
      EducationModel(
        title: "Année 5",
        description: "Your card text goes here.",
        imagePath: 'assets/images/welcome.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[200],
            ),
            child: ListView(
              children: educationModels.map((educationModel) {
                return Card(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              educationModel.title,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.grey[800],
                              ),
                            ),
                            Container(height: 10),
                            Text(
                              educationModel.description,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[700],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.transparent,
                                  ),
                                  child: Text(
                                    "Projets",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(height: 10),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
