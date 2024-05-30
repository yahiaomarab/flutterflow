import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

List<String>? getKeysFromJson(String? jsonString) {
  // Decode the JSON string into a Map
  Map<String, dynamic> jsonData = jsonDecode(jsonString!);

  // Extract the keys and return them as a List of Strings
  return jsonData.keys.toList();
}
