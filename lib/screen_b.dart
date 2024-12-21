import 'dart:io';

import 'package:flutter/material.dart';

class ScreenBView extends StatelessWidget {
  final String name;
  final String email;

  const ScreenBView({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // showDialog(
        //     context: context,
        //     builder: (context) {
        //       return AlertDialog(
        //         title: Text("Message"),
        //         content: Text("Do you really want to exit from app?"),
        //         actions: [
        //           TextButton(
        //               onPressed: () {
        //                 exit(0);
        //               },
        //               child: Text("Yes")),
        //           TextButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //               child: Text("No")),
        //         ],
        //       );
        //     });

        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          leadingWidth: 0,
          title: Text("Screen B"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 30),
              ), Text(
                email,
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
