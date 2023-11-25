import 'package:flutter/material.dart';

void main() => runApp(SkillsPage());

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BodyPage(),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10),
          child: Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/me.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Med Ali Zbaira",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "FullStack Devoloper",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
          child: Container(
            child: Text(
              "I have acquired many skills over many years and here are some of them.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget>[
              Text(
                "Technologies",
                style: TextStyle(
                    color: Colors.blue[700], fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 1,
                  width: 220,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children: const <Widget>[
              list(
                icon: 'assets/frameworks/java.png',
              ),
              list(
                icon: 'assets/frameworks/flutter.png',
              ),
              list(
                icon: 'assets/frameworks/javascript.png',
              ),
              list(
                icon: 'assets/frameworks/laravel.png',
              ),
              list(
                icon: 'assets/frameworks/angular.png',
              ),
              list(
                icon: 'assets/frameworks/css.png',
              ),
              list(
                icon: 'assets/frameworks/html.png',
              ),
              list(
                icon: 'assets/frameworks/django.png',
              ),
              list(
                icon: 'assets/frameworks/python.png',
              ),
              list(
                icon: 'assets/frameworks/firebase.png',
              ),
              list(
                icon: 'assets/frameworks/symfony.png',
              ),
              list(
                icon: 'assets/frameworks/docker.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class list extends StatelessWidget {
  const list({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/back.png",
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          Positioned(
            top: 10,
            left: 18,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 10, top: 15, bottom: 15),
              child: Image.asset(
                icon,
                height: 50,
                width: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
