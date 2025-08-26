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
              textBoxContainer('Box 1', Alignment.bottomRight),
              textBoxContainer('Box 2', Alignment.bottomLeft),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [textBoxContainer('Box 3', Alignment.center, true)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textBoxContainer('Box 4', Alignment.topRight),
              textBoxContainer('Box 5', Alignment.topLeft),
            ],
          ),
        ],
      ),
    );
  }

  Container textBoxContainer(
    String title,
    AlignmentGeometry alignment, [
    bool radius = false,
  ]) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius ? 20 : 0),
          bottomRight: Radius.circular(radius ? 20 : 0),
        ), //BorderRadius.circular(radius ? 20 : 0),
        color: Colors.red,
      ),

      alignment: alignment,
      width: 100,
      height: 100,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
