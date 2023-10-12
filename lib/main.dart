import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_app/config/routes/routes.dart';

import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedColor = Random().nextInt(colorList.length);
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor).getTheme(),
    );
  }
}
