import 'package:flutter/material.dart';

class GridLatihanWidget extends StatelessWidget {
  GridLatihanWidget({super.key});

  final List<Map<String, dynamic>> kuliner = [
    {
      'nama': 'Sate Madura',
      'harga': 25000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwP-re0QwlIgfXWIXcv1gRPnsPDGkqMS3JpliXejibFZ_5LNh0yelvbOF4&s=10",
      'khas': "Khas Dari Kota Madura",
      'description': 'Sate Madura adalah Makanan Favorit',
    },
    {
      'nama': 'Kerak Telor',
      'harga': 8000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAjEcGV6khhI2KC28KzJXOydNTldth-_BpLiEHVOQBHA&s=10",
      'khas': "Khas Dari Betawi",
      'description': 'Kerak telor adalah makanan khas tradisional suku Betawi yang berasal dari wilayah Menteng, Jakarta Pusat',
    },
    {
      'nama': 'Lontong Sayur',
      'harga': 10000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS27Amf3-EIpIafVmz_NAwXT6_DTNkpWFTtaiHCAGeFgw&s=10",
      'khas': "Khas Dari Batavia (Jakarta)",
      'description': 'Lontong Sayur adalah salah satu hidangan tradisional khas Indonesia yang terdiri dari potongan lontong yang disiram dengan kuah santan kaya rempah serta aneka sayuran.',
    },
    {
      'nama': 'Rendang',
      'harga': 8500,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcxYb7IunIOe5q9bx9nrTpU4yuM5L6Hx1vLGS0ul1f2g&s=10",
      'khas': "Khas Dari Kota Minangkabau, Sumatera Barat, Indonesia",
      'description': 'Rendang',
    },
    {
      'nama': 'Batagor',
      'harga': 1000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgHt2JQ3fjmwcuaBoisPQ17wuRyM2l-aBv-QjQvMIR8TiLjvOqWpt4iFU&s=10",
      'khas': "Khas Dari Kota Bandung",
      'description': 'Batagor',
    },
    {
      'nama': 'Lotek',
      'harga': 10000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTrVjVoJO1CKPcx7MeD-aSH-ZWTlrHjR61bIrMrcfIAQ&s=10",
      'khas': "Khas Dari Jawa Barat",
      'description': 'Lotek',
    },
    {
      'nama': 'Sate Madura',
      'harga': 25000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwP-re0QwlIgfXWIXcv1gRPnsPDGkqMS3JpliXejibFZ_5LNh0yelvbOF4&s=10",
      'khas': "Khas Dari Madura",
      'description': 'Sate Madura adalah Makanan Favorit',
    },
    {
      'nama': 'Sate Madura',
      'harga': 25000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwP-re0QwlIgfXWIXcv1gRPnsPDGkqMS3JpliXejibFZ_5LNh0yelvbOF4&s=10",
      'khas': "Khas Dari Madura",
      'description': 'Sate Madura adalah Makanan Favorit',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: kuliner.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final data = kuliner[index];

        return Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                data.containsKey('imageUrl')
                    ? Image.network(
                        data['imageUrl'],
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.broken_image, size: 60, color: Colors.grey);
                        },
                      )
                    : Icon(data['icon'], size: 60, color: data['warna']),
                
                SizedBox(height: 8),
                Text(
                  data['nama'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text("Rp. ${data['harga']}"),

                if (data.containsKey('khas')) ...[
                  SizedBox(height: 4),
                  Text(
                    data['khas'],
                    style: TextStyle(fontSize: 12, color: Colors.grey[600], fontStyle: FontStyle.italic),
                  ),
                ],

                if (data.containsKey('description')) ...[
                  SizedBox(height: 4),
                  Text(
                    data['description'],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, color: Colors.blueGrey),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}