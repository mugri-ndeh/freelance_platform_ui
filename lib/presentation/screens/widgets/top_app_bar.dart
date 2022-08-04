import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25.h),
        Text(title, style: Theme.of(context).textTheme.headline1),
        SizedBox(height: 5.h),
        subtitle.isEmpty
            ? SizedBox.shrink()
            : Text(subtitle, style: Theme.of(context).textTheme.headline3),
        subtitle.isEmpty ? SizedBox.shrink() : SizedBox(height: 5.h),
      ],
    );
  }
}
