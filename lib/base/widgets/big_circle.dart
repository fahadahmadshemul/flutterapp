import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  const BigCircle({Key? key, required this.isRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 10,
          child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: isRight == false
                      ? BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))
                      : BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)))),
        )
      ],
    );
  }
}
