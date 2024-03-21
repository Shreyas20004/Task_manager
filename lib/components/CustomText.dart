import 'package:flutter/material.dart';
import 'package:tms/Widgets/constant.dart';

Widget customText(String text,double size){
  return Text(text,
  style: TextStyle(
    color: kdark,
    fontSize: size,
    fontWeight: FontWeight.bold
    ),
  );
}