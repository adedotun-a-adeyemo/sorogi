import 'package:flutter/material.dart';

const kMainThemeColor = Color(0xFF0369C7);
const kThemeColor1 = Color(0xFF29A0B5);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kThemeColor1, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kThemeColor1, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

// #2C9FB5
// #DB5A67
// #2E77BA
