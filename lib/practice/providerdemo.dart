import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier {
  bool mode = false;

  changing() {
    mode = !mode;
    notifyListeners();
  }
}
