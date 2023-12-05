import 'package:Portfolio/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: mainText,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: mainText,
            ),
          ),
        ),
      ),
      body: Container(
        // color: darkMode ? TColors.black : Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // color: darkMode ? TColors.black : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("assets/images/me.png"),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Mohamed Ali Zbaira",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              buildContact(),
              const SizedBox(
                height: 10,
              ),
              buildMail(),
              const SizedBox(
                height: 10,
              ),
              buildLinkedin(),
              const SizedBox(
                height: 10,
              ),
              buildAdresse(),
              const SizedBox(
                height: 10,
              ),
              buildTranslate(),

              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     themeProvider.toggleTheme();
      //   },
      //   child: Icon(
      //     Icons.brightness_4,
      //     color: Colors.white,
      //   ),
      //   backgroundColor: darkMode ? Colors.lightBlueAccent : Colors.grey,
      // ),
    );
  }

  ElevatedButton buildFollowButton(String txt, Function() ontap) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 16.0),
        backgroundColor: Colors.black26,
      ),
      child: Text(
        txt,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }


}

void _callNumber() async {
  Uri dialNumber = Uri(scheme: 'tel', path: '+21622016178');
  if (!await launchUrl(dialNumber)) {
    throw Exception('Could not launch $dialNumber');
  }
}

void _sendEmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'medali.zbaira.contact@gmail.com',
    queryParameters: {'subject': 'Contact'},
  );

  if (!await launchUrl(_emailLaunchUri)) {
    throw 'Could not launch $_emailLaunchUri';
  }

  await launchUrl(_emailLaunchUri);
}






Future<void> _launchMaps() async {
  final Uri _urlLink = Uri.parse('https://maps.app.goo.gl/YK63yi4R3Uwxgnw3A');
  if (!await launchUrl(_urlLink)) {
    throw Exception('Could not launch $_urlLink');
  }
}

Widget buildContact() => Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Appelez Moi : ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      GestureDetector(
        onTap: () {
          _callNumber();
        },
        child: const ListTile(
          leading: Icon(
            FontAwesomeIcons.whatsapp,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text('+216 22 016 178'),
        ),
      ),
    ],
  ),
);

Widget buildMail() => Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Contactez Moi : ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,),
      ),
      GestureDetector(
        onTap: () {
          _sendEmail();
        },
        child: const ListTile(
          leading: Icon(
            Icons.email,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text('medali.zbaira.contact@gmail.com'),
        ),
      ),
    ],
  ),
);

Widget buildAdresse() => Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Adresse : ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,),
      ),
      GestureDetector(
        onTap: () {
          _launchMaps();
        },
        child: const ListTile(
          leading: Icon(
            Iconsax.location,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text("Rue Nicola, Mahres, Sfax"),
        ),
      ),
    ],
  ),
);
Widget buildLinkedin() => Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Linkedin : ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,),
      ),
      GestureDetector(
        onTap: () {
          _launchMaps();
        },
        child: const ListTile(
          leading: Icon(
            FontAwesomeIcons.linkedin,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text("/in/mohamed-ali-zbaira/"),
        ),
      ),
    ],
  ),
);

Widget buildTranslate() => Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Traduire",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      _buildLanguageRow([
        {'flagPath': 'icons/flags/svg/tn.svg', 'language': 'Arabe'},
        {'flagPath': 'icons/flags/svg/fr.svg', 'language': 'Français'},
        {'flagPath': 'icons/flags/svg/gb.svg', 'language': 'Anglais'},
      ]),
    ],
  ),
);

Widget _buildLanguageRow(List<Map<String, String>> languages) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: languages
        .map((language) => _buildLanguageTile(
      language['flagPath']!,
      language['language']!,
    ))
        .toList(),
  );
}

Widget _buildLanguageTile(String flagPath, String language) {

  return Container(
    width: 105,
    height: 115,
    child: Card(
      color: Colors.white30,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              flagPath,
              package: 'country_icons',
              height: 20,
            ),
            const SizedBox(height: 5),
            Text(
              language,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
