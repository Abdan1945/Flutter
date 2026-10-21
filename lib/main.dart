import 'package:flutter/material.dart';
import 'package:flutter_abdan_rpl3/row_column.dart/latihan_row_widget.dart';

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
          // title: Text("Belajar Container"),
          // backgroundColor: Colors.blue,
        ), // AppBar
        body: LatihanLayoutDua(), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ), // TextStyle
      ), // Text
    );
  }
}