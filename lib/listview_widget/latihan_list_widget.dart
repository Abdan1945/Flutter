import 'package:flutter/material.dart';

class latihanlistwidget extends StatelessWidget {
  const latihanlistwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> galleryData = [
      {
        'title': 'Bened',
        'desc': 'EXP LANE',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfXDptZ9pBa4Sk1mNlNohiR-l8wh-cNqPnXbBNifbeM_EjqNJa2JcD5Uc&s=10',
      },
      {
        'title': 'Estes',
        'desc': 'ROAM',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF2I9EnJfjyXVKv6Y1p3Atn-alRWyo-OH1Qwh-nN2QHkgR2THcatTWmog&s=10',
      },
      {
        'title': 'Lunox',
        'desc': 'MID LANE',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7y4GwwkRHqtAL1ocgJgBpNDA3mw8PHqce124LBaj2jg&s=10',
      },
      {
        'title': 'Ling',
        'desc': 'JUNGLER',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu3gwVVSjJHAOXsnaycXZoFkuwlL_ZNAjO6z7EST_Gpq0h-tsKuci1eFw&s=10',
      },
      {
        'title': 'Freya',
        'desc': 'GOLD LANE',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdew-ta1B_6dt-JeFHQDvzBlk0XSPdUKEeG7LQYq8aBw&s',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan List Widget - Galeri Hero-hero Mobile Legend Bang Bang'),
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),

      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [

          // SCROLL VERTIKAL
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: galleryData.length,
            itemBuilder: (context, index) {
              final item = galleryData[index];

              return Center(
                child: Container(
                  width: 180,
                  height: 230,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(
                                  Icons.broken_image,
                                  size: 40,
                                ),
                              );
                            },
                          ),
                        ),

                        Positioned.fill(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 12,
                          left: 12,
                          right: 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item['desc']!,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),

          // SCROLL HORIZONTAL
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: galleryData.length,
              itemBuilder: (context, index) {
                final item = galleryData[index];

                return Container(
                  width: 220,
                  height: 200,
                  margin: const EdgeInsets.only(
                    right: 12,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            item['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade300,
                                child: const Icon(
                                  Icons.broken_image,
                                  size: 40,
                                ),
                              );
                            },
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.black54,
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}