import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/logic/providers/bottom_navigation.dart';
import 'package:freelance_platform_ui/presentation/screens/base/widgets/bottom_nav.dart';
import 'package:freelance_platform_ui/presentation/screens/home/home_screen.dart';
import 'package:freelance_platform_ui/presentation/screens/messages/messages_screen.dart';
import 'package:freelance_platform_ui/presentation/screens/search/search_screen.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    MessagesScreen(),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationProvider(),
      child: Scaffold(
        body: Consumer<BottomNavigationProvider>(
          builder: (_, nav, __) {
            return _pages[nav.selectedIndex];
          },
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
