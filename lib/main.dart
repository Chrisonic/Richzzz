import 'package:flutter/material.dart';
import 'package:richz_beta/pages/homepage.dart';
import 'package:richz_beta/pages/trophies.dart';
import 'package:richz_beta/pages/chess.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const maincolor = Colors.deepPurple;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: maincolor,
        appBarTheme: const AppBarTheme(backgroundColor: maincolor),
      ),
      home: const Homepage(),
      routes: {
        '/leaderboard': (context) => const LeaderBoard(),
        '/homepage': (context) => const Homepage(),
        '/chess': (context) => const Chess(),
      },
    );
  }
}
