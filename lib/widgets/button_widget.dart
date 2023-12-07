import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/theme/helper_functions.dart';
import '../utils/theme/theme_provider.dart';

class CustomSpeedDial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return SpeedDial(
      icon: Icons.settings,
      overlayColor: Colors.grey.shade300,
      overlayOpacity: 0.4,
      spaceBetweenChildren: 8,
      spacing: 8,
      closeManually: false,
      children: [
        SpeedDialChild(
          child: Icon(Iconsax.moon),
          onTap: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
        ),
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.facebook),
          onTap: () {_launchFacebook();},
        ),
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.github),
          onTap: () {_launchGithub();},
        ),
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.linkedin),
          onTap: () {_launchLinkedin();},
        ),
      ],
    );
  }
}

Future<void> _launchFacebook() async {
  final Uri _urlFac = Uri.parse('https://www.facebook.com/profile.php?id=100028475258661');
  if (!await launchUrl(_urlFac)) {
    throw Exception('Could not launch $_urlFac');
  }
}

Future<void> _launchGithub() async {
  final Uri _urlGit = Uri.parse('https://github.com/Mohamed-Ali-Zbaira');
  if (!await launchUrl(_urlGit)) {
    throw Exception('Could not launch $_urlGit');
  }
}

Future<void> _launchLinkedin() async {
  final Uri _urlLink = Uri.parse('https://www.linkedin.com/in/mohamed-ali-zbaira/');
  if (!await launchUrl(_urlLink)) {
    throw Exception('Could not launch $_urlLink');
  }
}
