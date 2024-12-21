import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_b11/provider/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
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
                userProvider.getName,
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
