import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Botoes",
    subTitle: "Varios Tipos botes",
    link: '/botoes',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Telas",
    subTitle: "Varias telas",
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: "Progress Indicators",
    subTitle: "Generals and controlled",
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: "Snackbars and Dialogs",
    subTitle: "Snackbars and Dialogs",
    link: '/snackbar-screen',
    icon: Icons.abc_outlined,
  ),
  MenuItem(
    title: "Animated container",
    subTitle: "Statefull widget animado",
    link: '/animated-screen',
    icon: Icons.abc_outlined,
  ),
];
