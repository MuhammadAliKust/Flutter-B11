import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _name = "";

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  String get getName => _name;
}
