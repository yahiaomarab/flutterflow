import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _addbarcode = false;
  bool get addbarcode => _addbarcode;
  set addbarcode(bool value) {
    _addbarcode = value;
  }

  bool _savebarcode = false;
  bool get savebarcode => _savebarcode;
  set savebarcode(bool value) {
    _savebarcode = value;
  }
}
