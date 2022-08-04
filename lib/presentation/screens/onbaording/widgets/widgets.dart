import 'package:flutter/material.dart';

class BottomOnboard extends StatelessWidget {
  const BottomOnboard({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TitleOnboard extends StatelessWidget {
  const TitleOnboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Spiice',
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
