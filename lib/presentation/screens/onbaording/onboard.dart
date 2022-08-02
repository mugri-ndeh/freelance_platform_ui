import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freelance_platform_ui/core/themes/palette.dart';
import 'package:freelance_platform_ui/presentation/screens/auth/index.dart';
import 'package:freelance_platform_ui/presentation/screens/onbaording/widgets/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<Widget> _pages = [
    Column(
      children: [
        const TitleOnboard(),
        Center(
          child: Image.asset('assets/images/Illustration-4.png'),
        ),
        const BottomOnboard(
            text: 'Find projects from companies everywhere in the word'),
      ],
    ),
    Column(
      children: [
        const TitleOnboard(),
        Center(
          child: Image.asset('assets/images/Illustration-3.png'),
        ),
        const BottomOnboard(
            text: 'Make money while working on awesome projects'),
      ],
    ),
    Column(
      children: [
        const TitleOnboard(),
        Center(
          child: Image.asset('assets/images/Illustration-2.png'),
        ),
        const BottomOnboard(
          text: 'Chat with others freelancers and develop your network',
        )
      ],
    ),
    Column(
      children: [
        const TitleOnboard(),
        Center(
          child: Image.asset('assets/images/Illustration-1.png'),
        ),
        const BottomOnboard(
          text: 'Work hard and level up!',
        )
      ],
    ),
    Column(
      children: [
        const TitleOnboard(),
        Center(
          child: Image.asset('assets/images/Illustration.png'),
        ),
        const BottomOnboard(text: 'Enjoy your progess!'),
      ],
    ),
    Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const AuthIndex()),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
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
          IntroductionScreen(
            rawPages: _pages,
            globalBackgroundColor: Colors.transparent,
            onDone: () {},
            onSkip: () {},
            showSkipButton: false,
            showDoneButton: false,
            showNextButton: false,
            done: const Text('Done',
                style: TextStyle(fontWeight: FontWeight.w600)),
            dotsDecorator: const DotsDecorator(
              size: Size(7.5, 7.5),
              color: Color(0xFFBDBDBD),
              activeColor: Palette.purple,
              // activeSize: Size(22.0, 10.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
