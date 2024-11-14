import 'package:flutter/material.dart';
import 'package:flutter_b11/asset_image_demo.dart';
import 'package:flutter_b11/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
    );
  }
}
