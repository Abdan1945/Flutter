import 'package:flutter/material.dart';

class KartuProfil extends StatelessWidget {
  const KartuProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 249, 251),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
        ),
        child:Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(

                backgroundImage: NetworkImage(
                  "https://marketplace.canva.com/Fa16U/MAHCG9Fa16U/1/tl/canva-ilustrasi-datar-profil-seseorang-MAHCG9Fa16U.png"
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ghoyatul Abdan Kariman"),
                  SizedBox(height: 4),
                  Text("XII RPL 3")
                ],
              ),
            ),
          ]
        )
      )
    );
  }
}