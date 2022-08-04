import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freelance_platform_ui/core/helpers.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:freelance_platform_ui/presentation/screens/onbaording/onboard.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration:
                BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              "assets/images/bubbles.svg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.35,
                  child: const Center(
                    child: Text(
                      'Spiice',
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            push(context, Onboarding());
                          },
                          child: const Text('Discover the platform')),
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
                              onTap: () {},
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
