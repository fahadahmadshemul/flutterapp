import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
