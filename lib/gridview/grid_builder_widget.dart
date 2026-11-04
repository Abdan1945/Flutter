import 'package:flutter/material.dart';

class GridBuilderWidget extends StatelessWidget {
  GridBuilderWidget({super.key});

  final List<Map<String, dynamic>> produk = [
    {'nama':'Laptop',
    'harga': 7500000,
    'icon':Icons.laptop,
    'warna': Colors.blue,
    },
    {'nama':'Smartphone',
    'harga': 2500000,
    'icon':Icons.smartphone,
    'warna': Colors.blue,
    },
    {'nama':'Handphone',
    'harga': 150000,
    'icon':Icons.headphones,
    'warna': Colors.orange,
    },
    {'nama':'Keyboard',
    'harga': 375000,
    'icon':Icons.keyboard,
    'warna': Colors.purple,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: produk.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final data = produk [index];

          return Card(
            elevation: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(data['icon'], size: 60, color: data['warna']),
                SizedBox(height: 10),
                Text(
                  data['nama'],
                  style:TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text("Rp. ${data['harga']}"),
              ],
            ),
          );
        }
    );
  }
}