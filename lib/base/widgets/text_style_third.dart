import 'package:flutter/material.dart';
import 'package:flutter_practice/base/res/styles/app_style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyle.headlineStyleThree.copyWith(color: Colors.white));
  }
}
