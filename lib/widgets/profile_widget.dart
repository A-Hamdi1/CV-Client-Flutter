import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/text_strings.dart';
import '../utils/theme/helper_functions.dart';

void main() => runApp(const ProfileWidget());

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  final double coverHeight = 190;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(context),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          "assets/images/dev.png",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage("assets/images/me.png"),
      );

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildContent(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        const SizedBox(height: 8),
        const Text('MedAli Zbaira',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text(
          'Software Engineer',
          style: TextStyle(
            fontSize: 20,
            color: darkMode ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 16),
        buildAbout(),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }

  Widget buildAbout() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("About",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 16),
            Text(
              aboutprofile,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );
}
