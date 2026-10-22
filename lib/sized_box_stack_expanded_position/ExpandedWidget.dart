import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: Colors.amber),

        Expanded(
          flex:1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 243, 72, 33),
          ),
        ),
        Expanded(
          flex:1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 47, 243, 33),
          ),
        ),
        Expanded(
          flex:3,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 243, 72, 33),
          ),
        ),
      ],
    );
  }
}