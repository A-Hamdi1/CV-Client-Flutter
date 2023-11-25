import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/section_heading.dart';
import '../constants/settings_menu_tile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Contact Details',
                  ),
                  const SizedBox(height: 16.0),
                  TSettingsMenuTile(
                    icon: FontAwesomeIcons.google,
                    title: 'Email',
                    subTitle: 'mohamedalizbaira@gmail.com',
                    onTap: () => _sendEmail(),
                  ),
                  TSettingsMenuTile(
                    icon: FontAwesomeIcons.facebook,
                    title: 'Facebook',
                    subTitle: 'MedAli Zbaira',
                    onTap: () => _launchFacebook(),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.map,
                    title: 'Location',
                    subTitle: 'Rte Mahdia Klm 1.5',
                    onTap: () => _launchMap(),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.call,
                    title: 'Phone Number',
                    subTitle: '44 37 44 37',
                    onTap: () => callNumber(),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const TSectionHeading(
                    title: 'App Setting',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.moon,
                    title: 'Theme Mode',
                    subTitle: 'Choose your theme',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchFacebook() async {
    final Uri _urlFac = Uri.parse('https://www.facebook.com/profile.php?id=100028475258661');
    if (!await launchUrl(_urlFac)) {
      throw Exception('Could not launch $_urlFac');
    }
  }

  void callNumber() async {
    Uri dialNumber = Uri(scheme: 'tel', path: '+21622016178');
    if (!await launchUrl(dialNumber)) {
      throw Exception('Could not launch $dialNumber');
    }
  }

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mohamedalizbaira@gmail.com',
      queryParameters: {'subject': 'Demande Projet'},
    );

    if (!await launchUrl(_emailLaunchUri)) {
      throw 'Could not launch $_emailLaunchUri';
    }

    await launchUrl(_emailLaunchUri);
  }

  void _launchMap() async {
    final Uri _mapLaunchUri =
        Uri.parse('https://maps.app.goo.gl/vqA1C31RMojmMxiJ8');
    if (!await launchUrl(_mapLaunchUri)) {
      throw Exception('Could not launch $_mapLaunchUri');
    }
  }

// ... (other helper functions if any)
}
