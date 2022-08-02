import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/core/themes/theme.dart';
import 'package:freelance_platform_ui/presentation/screens/onbaording/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customLightTheme(),
      home: const Welcome(),
    );
  }
}
