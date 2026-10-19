import 'package:flutter/material.dart';

// bagian main app (menjalankan aplikasi)
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
          backgroundColor: Colors.blue,
        ), // AppBar
        body: Center(
          child: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.amber,
              fontStyle: FontStyle.italic,
            ), // TextStyle
          ), // Text
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}