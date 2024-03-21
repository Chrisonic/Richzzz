// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leader Boards",
          style: TextStyle(fontSize: 30.00),
        ),
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Center(child: const Text("LeaderBoards")),
    );
  }
}
