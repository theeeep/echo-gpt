import 'package:echo_gpt/core/themes/theme_notifier.dart';
import 'package:echo_gpt/core/themes/themes.dart';
import 'package:echo_gpt/views/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Echo GPT',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
      home: const OnboardingPage(),
    );
  }
}
