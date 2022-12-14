import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/presentation/screens/base/base_screen.dart';
import 'package:freelance_platform_ui/presentation/screens/home/home_screen.dart';
import 'package:freelance_platform_ui/presentation/screens/messages/messages_screen.dart';
import 'package:freelance_platform_ui/presentation/screens/onbaording/onboard.dart';
import 'package:freelance_platform_ui/presentation/screens/onbaording/welcome.dart';
import 'package:freelance_platform_ui/presentation/screens/profile/profile_screen.dart';
import 'package:freelance_platform_ui/presentation/screens/search/search_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  // initialLocation:
  errorPageBuilder: (context, state) =>
      MaterialPage(key: state.pageKey, child: Scaffold()),
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      name: 'welcome',
      builder: (context, state) {
        return const Welcome();
      },
    ),
    GoRoute(
      path: '/onboarding',
      name: 'onboarding',
      builder: (context, state) {
        return Onboarding();
      },
    ),
    GoRoute(
      name: 'baseScreen',
      path: '/baseScreen',
      builder: (BuildContext context, GoRouterState state) {
        return BaseScreen();
      },
    ),
    GoRoute(
      name: 'homeScreen',
      path: '/homeScreen',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      name: 'searchScreen',
      path: '/searchScreen',
      builder: (context, state) {
        return const SearchScreen();
      },
    ),
    GoRoute(
      path: '/messagesScreen',
      name: 'messagesScreen',
      builder: (BuildContext context, GoRouterState state) {
        return MessagesScreen();
      },
    ),
    GoRoute(
      path: '/profileScreen',
      name: 'profileScreen',
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileScreen();
      },
    ),
  ],
);
