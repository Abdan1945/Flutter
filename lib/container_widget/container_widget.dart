import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        // color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue, width: 2),
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.blueAccent, Colors.blueAccent],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        image: DecorationImage(
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpq8OTI6rDepTGGV5JOFl6edL1tD_-LpMgCl-_ALN2Iw&s",
          ),
          fit: BoxFit.fitWidth, // Posisi fit sudah benar di dalam DecorationImage
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PERSIB"),
            SizedBox(height: 4), // Jarak tipis antara teks dan bintang
            Text("⭐⭐⭐⭐⭐"),
          ],
        ),
      ),
    );
  }
}