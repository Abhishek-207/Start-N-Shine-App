import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String? codeGenerator() {
  // Generate 8 digit unique code with number and Alphabets
  const _chars = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var values = new List.generate(8, (index) {
    var i = math.Random.secure().nextInt(_chars.length);
    return _chars[i];
  });
  var code = values.join('');
  return code;
}

String checkUsername(String inputString) {
  // convert the string to lower case and check whether it contains space or special characters

  final validCharacters = RegExp(r'^[a-zA-Z0-9\._]+$');

  String inputStr = inputString.toLowerCase();
  if (validCharacters.hasMatch(inputStr))
    return inputStr;
  else
    return "startnshine";
}

int addVal(
  int finalVal,
  int initialVal,
) {
  // generate a function to subtract second value from the first and give me the ans

  var sum = (finalVal + initialVal);

  return sum;
}

String? firstNameExtractor(String? fullName) {
  // function to take out first name from Full name
  var cl = new List.from(fullName!.split(" "));
  var myName = cl[0];

  return myName;
}
