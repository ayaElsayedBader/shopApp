import 'package:flutter/material.dart';
import 'package:untitled2/core/const/resource_style/value_app.dart';

import 'color_app.dart';

ThemeData getTheme() {
  return ThemeData(
      scaffoldBackgroundColor: ColorApp.white,
      textTheme: TextTheme(
          displayLarge: TextStyle(
              color: ColorApp.blue,
              fontSize: ValueApp.va25,
              fontWeight: FontWeight.bold)));
}
class Style {
  static TextStyle getStyle() {
    return TextStyle(color: ColorApp.blue, fontSize: ValueApp.va22);
  }
}
class ProductStyle {
  static TextStyle getStyle() {
    return TextStyle(
        fontSize: ValueApp.va30,
        fontWeight: FontWeight.bold,
        color: ColorApp.teal);
  }
}
