// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final hasNotch = MediaQuery.of(context).viewPadding.top;
    // if (Platform.isAndroid) {
    //   print('Android $hasNotch');
    // }
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          final menuItem = appMenuItems[value];
          context.push(menuItem.link);

          // fecha o drawer
          widget.scaffoldKey.currentState!.closeDrawer();
        },
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 30, 16, 10),
            child: Text(
              'Main',
            ),
          ),
          ...appMenuItems.sublist(0, 3).map(
                (item) => NavigationDrawerDestination(
                  icon: Icon(item.icon),
                  label: Text(item.title),
                ),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Divider(
              color: Colors.black,
              height: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 30, 16, 10),
            child: Text(
              'More Option',
            ),
          ),
          ...appMenuItems.sublist(3).map(
                (item) => NavigationDrawerDestination(
                  icon: Icon(item.icon),
                  label: Text(item.title),
                ),
              ),
        ]);
    // children: appMenuItems
    //     .map((e) => _NavigationDrawerDestinationCustom(e.icon, e.title))
    //     .toList());
  }
}
