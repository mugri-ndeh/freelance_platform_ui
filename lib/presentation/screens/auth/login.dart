import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:freelance_platform_ui/logic/providers/auth_index_provider.dart';
import 'package:provider/provider.dart';

import 'components/input.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 88),
                color: Colors.transparent,
                child: IntrinsicHeight(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Palette.purple.shade200),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(height: 40),
                            Text('Log-in'),
                            SizedBox(height: 20),
                            Input(hint: 'email'),
                            SizedBox(height: 10),
                            Input(hint: 'password'),
                            SizedBox(height: 10),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Log-in')),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(fontSize: 18, color: Palette.black),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                        onTap: () {
                          Provider.of<AuthIndexProvider>(context, listen: false)
                              .setIndex(0);
                        },
                        child: Text(
                          'Sign-up',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Palette.black),
                        )),
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
          ],
        ));
  }
}
