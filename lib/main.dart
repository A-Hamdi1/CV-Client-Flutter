import 'package:Portfolio/utils/theme/theme.dart';
import 'package:Portfolio/utils/theme/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/onbaording.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      scrollBehavior: const CupertinoScrollBehavior(),
      home: OnboardingPage(),
    );
  }
}
