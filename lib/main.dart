import 'package:flutter/material.dart';
import 'package:ui_app/pod/theme.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(UIapp());
}

class UIapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeData = UIappTheme.themeData();
    return MaterialApp(
      title: 'UI app',
      theme: themeData,
      home: HomeScreen(),
    );
  }
}
