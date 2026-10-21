import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            FlutterLogo(size: 50, style: FlutterLogoStyle.horizontal),
            FlutterLogo(size: 50, style: FlutterLogoStyle.stacked),
            FlutterLogo(size: 50),
            Column(
              children: [
                Text("ini text column 1"),
                Text("ini text column 2"),
              ],
            )
        ],
    );
  }
}