// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_chess_board/flutter_chess_board.dart';

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  ChessBoardController controller = ChessBoardController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Chess Board",
            style: TextStyle(fontSize: 30.00),
          ),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Center(
          child: ChessBoard(
            controller: controller,
            boardColor: BoardColor.green,
            boardOrientation: PlayerColor.white,
            size: 300,
          ),
        ));
  }
}
