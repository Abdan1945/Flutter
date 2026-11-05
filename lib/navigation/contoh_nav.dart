import 'package:flutter/material.dart';
import 'package:flutter_abdan_rpl3/navigation/about_page.dart';

class ContohNav extends StatelessWidget {
  ContohNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutPage(
                        nama: "Ghoyatul Abdan",
                        kelas: "XII RPL 3",
                        umur: 17,
                      );
                    },
                  ),
                );
              },
              child: const Text("Pindah Ke Halaman About"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid');
              },
              child: const Text("Halaman Latihan Grid"), 
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: const Text("Halaman Latihan List"),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/container_widget');
              },
              child: const Text("Halaman Latihan Container"), 
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gridview');
              },
              child: const Text("Halaman Latihan Grid"), 
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/row_column');
              },
              child: const Text("Halaman Latihan Column"), 
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sized_box');
              },
              child: const Text("Halaman Latihan Sized Box"), 
            ),
          ],
        ),
      ),
    );
  }
}