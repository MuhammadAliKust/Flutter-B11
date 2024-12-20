import 'package:flutter/material.dart';
import 'package:flutter_b11/asset_image_demo.dart';
import 'package:flutter_b11/bottom_bar_view.dart';
import 'package:flutter_b11/bottom_sheet.dart';
import 'package:flutter_b11/dialog_box.dart';
import 'package:flutter_b11/dynamic_list_view.dart';
import 'package:flutter_b11/grid_view.dart';
import 'package:flutter_b11/list_tile_view.dart';
import 'package:flutter_b11/login_view.dart';
import 'package:flutter_b11/multiple_selection_view.dart';
import 'package:flutter_b11/onboarding.dart';
import 'package:flutter_b11/provider/user_provider.dart';
import 'package:flutter_b11/screen_a.dart';
import 'package:flutter_b11/single_selection_view.dart';
import 'package:flutter_b11/tabbar_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenAView(),
    );
  }
}
