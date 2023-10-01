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
];
