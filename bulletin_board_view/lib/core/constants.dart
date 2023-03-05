import 'package:flutter/material.dart';

Color mainColor = Color(0xFF002F34);
Color secondColor = Color(0xFF71CBA6);

const  kTextFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF002F34), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF002F34), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
);