import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/theme_changer.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerProvider>(context);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text(
              "Light Mode",
              style: TextStyle(
                fontFamily: 'avenir',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text(
              "Dark Mode",
              style: TextStyle(
                fontFamily: 'avenir',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text(
              "System Mode",
              style: TextStyle(
                fontFamily: 'avenir',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          )
        ],
      ),
    );
  }
}
