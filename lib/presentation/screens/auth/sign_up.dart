import 'package:flutter/material.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:provider/provider.dart';

import '../../../logic/providers/auth_index_provider.dart';
import 'components/input.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 88),
                color: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.purple.shade200),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: const [
                      SizedBox(height: 40),
                      Text('Sign-up'),
                      SizedBox(height: 20),
                      Input(hint: 'first name'),
                      SizedBox(height: 10),
                      Input(hint: 'last name'),
                      SizedBox(height: 10),
                      Input(hint: 'email name'),
                      SizedBox(height: 10),
                      Input(hint: 'password'),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Sign-up')),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You have an account?',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(fontSize: 18, color: Palette.black),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                          onTap: () {
                            Provider.of<AuthIndexProvider>(context,
                                    listen: false)
                                .setIndex(1);
                          },
                          child: Text(
                            'Log-in',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
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
          ),
        ));
  }
}
