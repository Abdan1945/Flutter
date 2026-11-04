import 'package:flutter/material.dart';
import 'package:flutter_abdan_rpl3/gridview/grid_basic.dart';
import 'package:flutter_abdan_rpl3/gridview/grid_builder_widget.dart';
import 'package:flutter_abdan_rpl3/gridview/grid_latihan_widget.dart';
import 'package:flutter_abdan_rpl3/listview_widget/latihan_list_widget.dart';
import 'package:flutter_abdan_rpl3/listview_widget/list_basic.dart';
import 'package:flutter_abdan_rpl3/listview_widget/list_builder2.dart';
import 'package:flutter_abdan_rpl3/listview_widget/list_builder_widget.dart';
import 'package:flutter_abdan_rpl3/listview_widget/list_separated.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/ExpandedWidget.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/LatihanWidget.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/LayoutDua.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/LayoutEmpat.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/LayoutSatu.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/LayoutTiga.dart';
import 'package:flutter_abdan_rpl3/sized_box_stack_expanded_position/StackWidget.dart';

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
          title: Text("Kuliner Nusantara"),
          // backgroundColor: Colors.blue,
        ), // AppBar
        body: GridLatihanWidget(), // Center
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