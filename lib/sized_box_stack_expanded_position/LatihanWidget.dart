import 'package:flutter/material.dart';

class Latihanwidget extends StatelessWidget {
  const Latihanwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(height: 140, color: const Color.fromARGB(255, 84, 46, 252)),
            Positioned(
              bottom: 20,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 182, 181, 181),
                  radius: 36,
                  child: Icon(Icons.person, size: 48, color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}