import 'package:flutter/material.dart';

class AssetsImageViewDemo extends StatelessWidget {
  const AssetsImageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Asset Image Demo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Image.asset('assets/images/1.png'),
    );
  }
}
