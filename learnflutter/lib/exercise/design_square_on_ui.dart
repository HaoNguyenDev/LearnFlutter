import 'package:flutter/material.dart';

class DesignSquareOnUI extends StatelessWidget {
  const DesignSquareOnUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FourSquareOnUI(),
    );
  }
}

class FourSquareOnUI extends StatelessWidget {
  const FourSquareOnUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              redBoxContainer('Box 1', Alignment.bottomRight),
              redBoxContainer('Box 2', Alignment.bottomLeft),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              redBoxContainer('Box 3', Alignment.center),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              redBoxContainer('Box 4', Alignment.topRight),
              redBoxContainer('Box 5', Alignment.topLeft),
            ],
          ),
        ],
      ),
    );
  }

  Container redBoxContainer(String title, AlignmentGeometry alignment) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
      child: Align(
        alignment: alignment,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
