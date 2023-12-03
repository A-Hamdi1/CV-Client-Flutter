import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/text_strings.dart';

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
          buildContent(),
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

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          const Text('MedAli Zbaira',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'Software Engineer',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.google, _sendEmail),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.github, _launchGithub),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.facebook, _launchFacebook),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin, _launchLinkedin),
            ],
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

  Widget buildSocialIcon(IconData icon, onTap) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.blueGrey,
          child: InkWell(
            onTap: onTap,
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );
}

Future<void> _launchFacebook() async {
  final Uri _urlFac = Uri.parse('https://www.facebook.com/Akram.Hamdi.Dev');
  if (!await launchUrl(_urlFac)) {
    throw Exception('Could not launch $_urlFac');
  }
}

Future<void> _launchGithub() async {
  final Uri _urlGit = Uri.parse('https://github.com/A-Hamdi1');
  if (!await launchUrl(_urlGit)) {
    throw Exception('Could not launch $_urlGit');
  }
}

Future<void> _launchLinkedin() async {
  final Uri _urlLink = Uri.parse('https://www.linkedin.com/in/hamdi-akram');
  if (!await launchUrl(_urlLink)) {
    throw Exception('Could not launch $_urlLink');
  }
}

void callNumber() async {
  Uri dialNumber = Uri(scheme: 'tel', path: '+21623757648');
  if (!await launchUrl(dialNumber)) {
    throw Exception('Could not launch $dialNumber');
  }
}

void _sendEmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hamdi.akram.dev@gmail.com',
    queryParameters: {'subject': 'Demande Projet'},
  );

  if (!await launchUrl(_emailLaunchUri)) {
    throw 'Could not launch $_emailLaunchUri';
  }

  await launchUrl(_emailLaunchUri);
}
