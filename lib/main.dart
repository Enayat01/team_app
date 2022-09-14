import 'package:flutter/material.dart';
import 'package:team_app/screens/team_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(6, 119, 194, 1),
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const TeamPage(),
    );
  }
}
