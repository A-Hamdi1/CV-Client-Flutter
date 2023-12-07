import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/theme/helper_functions.dart';
import '../utils/theme/theme_provider.dart';
import '../widgets/button_widget.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  int _current = 0;
  dynamic _selectedIndex = {};

  CarouselController _carouselController = CarouselController();

  List<dynamic> _products = [
    {
      'title': 'Harvest Group',
      'image': 'assets/images/haverst.png',
      'description': 'Skills: HTML5 • CSS • JavaScript • jQuery '
    },
    {
      'title': 'Exadev',
      'image': 'assets/images/exa.png',
      'description':
          'Skills: HTML5 • CSS • PHP • Laravel • XAMPP • Databases • MySQL'
    },
    {
      'title': 'UIB - Société Générale Group',
      'image': 'assets/images/uib.png',
      'description': 'Skills: HTML5 • CSS • JavaScript • jQuery '
    },
  ];

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: darkMode ? Colors.grey.shade900 : Colors.grey.shade300,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        title: Text(
          'My experiences',
          style: TextStyle(
            color: darkMode ? Colors.white70 : Colors.black87,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 450.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: _products.map((movie) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_selectedIndex == movie) {
                        _selectedIndex = {};
                      } else {
                        _selectedIndex = movie;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: darkMode
                          ? Colors.grey.shade800
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: _selectedIndex == movie
                          ? Border.all(color: Colors.blue.shade500, width: 3)
                          : null,
                      boxShadow: _selectedIndex == movie
                          ? [
                              BoxShadow(
                                  color: Colors.blue.shade100,
                                  blurRadius: 30,
                                  offset: Offset(0, 10))
                            ]
                          : [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 20,
                                  offset: Offset(0, 5))
                            ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            margin: EdgeInsets.only(top: 10),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                                Image.asset(movie['image'], fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            movie['title'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: darkMode ? Colors.white70 : Colors.black87,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12, right: 8.0),
                            child: Text(
                              movie['description'],
                              style: TextStyle(
                                fontSize: 14,
                                color: darkMode
                                    ? Colors.white70
                                    : Colors.grey.shade800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
      floatingActionButton: CustomSpeedDial(),
    );
  }
}
