// Automatic FlutterFlow imports
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future fotolocal(FFUploadedFile uploadedImage) async {
  // localimage to base64Image

  // Read the image file as bytes
  List<int> imageBytes = await uploadedImage.file.readAsBytes();

  // Convert the image bytes to base64
  String base64Image = base64Encode(imageBytes);

  return base64Image;
}
