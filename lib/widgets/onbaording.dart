import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../pages/profile.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 7),
          () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    color: Colors.white,

                    child: Lottie.asset(
                      'animations/animation2.json',
                      repeat: false,
                      animate: true,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Portfolio",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
