import 'package:flutter/material.dart';
import 'package:flutter_demo_app/data/constants.dart';
import 'package:flutter_demo_app/data/notifiers.dart';
import 'package:flutter_demo_app/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initThemeState();
  }

  void initThemeState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkModeNotifier.value = prefs.getBool(KConstants.IS_DARK_MODE) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: const WelcomePage(),
        );
      },
    );
  }
}
