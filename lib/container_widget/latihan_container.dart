// latihan_container.dart
import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 420,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 20.0, right: 20, left: 20, bottom: 20),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          // color: const Color.fromARGB(255, 146, 146, 146),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color.fromARGB(255, 59, 59, 59),
            width: 2,
          ),
          image: DecorationImage(
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHVbXReaC8XnTXl0urrGNg3CI3kW9XlBpv-r8PlJJMsXQCuzQxLBg5goQ&s=10",
            ),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),

        // transform: Matrix4.rotationZ(0.1),
        child: Align(
          
          alignment: Alignment.bottomCenter,
          child: Text( 
            textAlign: TextAlign.justify,
            "Serunya Koleksi Kartu Pokemon, Ada Mega Dragonite ex hingga Rarity Baru",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(255, 242, 243, 243),
              backgroundColor: const Color.fromARGB(255, 0, 225, 255),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}