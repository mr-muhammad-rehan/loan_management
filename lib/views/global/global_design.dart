import 'package:flutter/material.dart';

InputDecoration decoration({String hintText}) {
  final borderRadius = BorderRadius.all(Radius.circular(5));

  return InputDecoration(
    contentPadding: const EdgeInsets.all(10),
    filled: true,
    fillColor: Colors.white,
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(width: 1, color: Colors.blue),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    border: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(width: 1, color: Colors.blue),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(width: 1, color: Colors.blue),
    ),
    hintText: hintText,
    hintStyle: TextStyle(color: Color(0xff707070)),
    errorStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
  );
}
