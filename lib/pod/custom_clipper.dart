import 'package:flutter/material.dart';
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
      path.moveTo(0, size.height);
      path.lineTo(size.width/5, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}