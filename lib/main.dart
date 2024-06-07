import 'package:echo_gpt/core/themes/themes.dart';
import 'package:echo_gpt/views/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Echo GPT',
      theme: lightMode,
      darkTheme: darkMode,
      home: const OnboardingPage(),
    );
  }
}
