import 'package:flutter/material.dart';

import '../../../../core/themes/palette.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.hint,
    this.controller,
  }) : super(key: key);
  final String hint;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Palette.purple.shade200,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.purple.shade200),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.purple.shade200),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
