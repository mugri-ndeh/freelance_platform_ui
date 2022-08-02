import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/logic/providers/auth_index_provider.dart';
import 'package:freelance_platform_ui/presentation/screens/auth/login.dart';
import 'package:freelance_platform_ui/presentation/screens/auth/sign_up.dart';
import 'package:provider/provider.dart';

class AuthIndex extends StatefulWidget {
  const AuthIndex({Key? key}) : super(key: key);

  @override
  State<AuthIndex> createState() => _AuthIndexState();
}

class _AuthIndexState extends State<AuthIndex> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthIndexProvider(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Consumer<AuthIndexProvider>(builder: (_, auth, __) {
          return auth.index == 0 ? const SignUp() : const Login();
        }),
      ),
    );
  }
}
