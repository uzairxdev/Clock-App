import 'package:clock_app/Provider/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          title: 'Clock App',
          debugShowCheckedModeBanner: false,
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.deepPurple,
          ),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.teal,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.teal,
              )),
          home: const HomePage(),
        );
      }),
    );
  }
}
