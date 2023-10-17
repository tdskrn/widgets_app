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
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: "Animated container",
    subTitle: "Statefull widget animado",
    link: '/animated-screen',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: "ui controll Screen",
    subTitle: "Checbox and other tiles",
    link: '/ui-controls-screen',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: "AppTutorial",
    subTitle: "Tutorial for app",
    link: '/app-tutorial-screen',
    icon: Icons.accessible_rounded,
  ),
  MenuItem(
    title: "Infinite Scroll",
    subTitle: "Infinite Scroll",
    link: '/infinite-scroll-screen',
    icon: Icons.insert_drive_file,
  ),
  MenuItem(
    title: "Counter Screen",
    subTitle: "Screen for counter",
    link: '/counter-screen',
    icon: Icons.countertops,
  ),
  MenuItem(
    title: "Theme Changer",
    subTitle: "Screen for counter",
    link: '/theme-changer-screen',
    icon: Icons.countertops,
  ),
];
