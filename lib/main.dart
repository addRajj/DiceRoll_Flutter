import 'package:flutter/material.dart';
import 'package:myapp/gradient_container.dart';

final List<Color> colors = [Colors.black, Colors.white];
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ContainerGradient(colors),
      ),
    ),
  );
}
