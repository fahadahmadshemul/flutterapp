import 'package:flutter/material.dart';
import 'package:flutter_practice/base/res/styles/app_style.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFourth({super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: AppStyle.headlineStyleFour.copyWith(color: Colors.white));
  }
}
