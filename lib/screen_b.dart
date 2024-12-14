import 'dart:io';

import 'package:flutter/material.dart';

class ScreenBView extends StatelessWidget {
  const ScreenBView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Message"),
                content: Text("Do you really want to exit from app?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        exit(0);
                      },
                      child: Text("Yes")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No")),
                ],
              );
            });

        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          leadingWidth: 0,
          title: Text("Screen B"),
        ),
      ),
    );
  }
}
