import 'package:flutter/material.dart';

Color backgroundColor = Colors.grey.shade100;
Color darkOffset = Colors.black.withOpacity(.1);
Color lightOffset = Colors.white;
Color textColor = Colors.grey.shade600;

BoxDecoration normalDecoration =
    BoxDecoration(color: backgroundColor, shape: BoxShape.circle, boxShadow: [
  BoxShadow(color: darkOffset, offset: Offset(10, 10), blurRadius: 10),
  BoxShadow(color: lightOffset, offset: Offset(-10, -10), blurRadius: 10)
]);

BoxDecoration invertDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15.0),
    color: Colors.black.withOpacity(.075),
    boxShadow: [
      BoxShadow(
          offset: Offset(-3, -3),
          blurRadius: 10,
          color: lightOffset,
          spreadRadius: -10)
    ]);
