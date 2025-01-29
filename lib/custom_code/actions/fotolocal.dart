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
  try {
    // Pastikan uploadedImage memiliki data
    if (uploadedImage.bytes == null) {
      throw Exception("Gambar tidak ditemukan.");
    }

    // Konversi image ke base64
    String base64Image = base64Encode(uploadedImage.bytes!);

    // Debugging: Cetak hasil Base64 di console
    print("Base64 Result: ${base64Image.substring(0, 100)}...");

    return base64Image;
  } catch (e) {
    print("Error: $e");
    return "Error: $e";
  }
}
