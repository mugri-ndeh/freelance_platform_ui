import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:freelance_platform_ui/logic/providers/bottom_navigation.dart';
import 'package:provider/provider.dart';
import 'package:remixicon/remixicon.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
      builder: (_, nav, __) {
        return BottomNavigationBar(
          currentIndex: nav.selectedIndex,
          onTap: (index) {
            nav.selectedIndex = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Remix.dashboard_line),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Remix.search_2_line),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Remix.discuss_line),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Remix.user_line),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
