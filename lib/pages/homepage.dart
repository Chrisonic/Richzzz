// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import "package:flutter/material.dart";
// ignore: depend_on_referenced_packages
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static const pages = ["/homepage", "/leaderboard", "/chess"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              "Homepage",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          titleTextStyle: TextStyle(color: Colors.white)),
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.deepPurple,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(20.00),
            onTabChange: (index) {
              print(index);
              Navigator.pushNamed(context, pages[index]);
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.emoji_events,
                text: "Leader Board",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.games,
                text: "Chess",
              ),
              GButton(
                icon: Icons.person_outlined,
                text: "Profile",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go To Trophies"),
          onPressed: () {
            Navigator.pushNamed(context, "/leaderboard");
          },
        ),
      ),
    );
  }
}
