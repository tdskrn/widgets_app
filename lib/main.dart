import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_app/config/routes/routes.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

import 'package:widgets_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedColor = Random().nextInt(colorList.length);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor).getTheme(),
      home: const HomeScreen(),
      routes: AppRoutes.appRoutes,
    );
  }
}
