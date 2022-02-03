import 'package:flutter/material.dart';

class AppColor {
  static final AppColor _singleton = AppColor._internal();

  factory AppColor() {
    return _singleton;
  }

  AppColor._internal();
  final Color primaryColor = Colors.white;
  final Color secondaryColor = Color(0xFF97C0D4);
}
