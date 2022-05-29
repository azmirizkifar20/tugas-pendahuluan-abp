import 'package:flutter/material.dart';
import 'package:modul_13/detail.dart';
import 'package:modul_13/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pendahuluan',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case DetailPage.routeName:
            final title = settings.arguments as String;
            return MaterialPageRoute(
                builder: (_) => DetailPage(
                      title: title,
                    ),
                settings: settings);
          case HomePage.routeName:
            return MaterialPageRoute(
                builder: (_) => HomePage(), settings: settings);
          default:
            return null;
        }
      },
      home: const HomePage(),
    );
  }
}
