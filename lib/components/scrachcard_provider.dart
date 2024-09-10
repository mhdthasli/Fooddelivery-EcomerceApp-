import 'package:flutter/material.dart';

class ScratchCardProvider with ChangeNotifier {
  bool _isScratched = false;

  bool get isScratched => _isScratched;

  void markAsScratched() {
    _isScratched = true;
    notifyListeners();
  }

  void resetScratchCard() {
    _isScratched = false;
    notifyListeners();
  }
}
