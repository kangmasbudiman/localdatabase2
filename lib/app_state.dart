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

  bool _connected = false;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  String _image =
      'https://eagle-sensors.com/wp-content/uploads/unavailable-image.jpg';
  String get image => _image;
  set image(String value) {
    _image = value;
  }

  String _base64 = '';
  String get base64 => _base64;
  set base64(String value) {
    _base64 = value;
  }
}
