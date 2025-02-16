import 'package:flutter/material.dart';
import 'package:flutter_practice/base/res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {Key? key, required this.bigText, required this.smallText})
      : super(key: key);

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyle.headlineStyleTwo,
        ),
        InkWell(
          onTap: () {},
          child: Text(smallText,
              style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor)),
        )
      ],
    );
  }
}
