import 'package:flutter/material.dart';
import 'package:flutter_b11/screen_b.dart';

class ScreenAView extends StatelessWidget {
  ScreenAView({super.key});

  String name = "Khurram";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenBView(
                            name: name,
                        email: 'test@mail.com',
                          )));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
