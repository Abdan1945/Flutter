import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logo Flutter'),
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.6,
        ),
        children: [
          Container(
            color: Colors.amber,
            child: const FlutterLogo(
              size: 64,
              style: FlutterLogoStyle.markOnly,
              textColor: Colors.green,
            ),
          ),
          Container(
            color: Colors.pink, 
            child: const FlutterLogo(size: 64, style: FlutterLogoStyle.horizontal),
          ),
          Container(
            color: Colors.teal, 
            child: const FlutterLogo(size: 64, style: FlutterLogoStyle.stacked),
          ),
          Container(
            color: Colors.purple, 
            child: const FlutterLogo(size: 64, style: FlutterLogoStyle.markOnly),
          ),
        ],
      ),
    );
  }
}