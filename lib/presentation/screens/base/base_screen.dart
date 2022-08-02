import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/logic/providers/bottom_navigation.dart';
import 'package:freelance_platform_ui/presentation/screens/base/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Search')),
    const Center(child: Text('Messages')),
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
