import 'package:flutter/material.dart';
import 'package:flutter_practice/base/res/styles/app_style.dart';
import 'package:flutter_practice/base/widgets/app_layout_builder_widget.dart';
import 'package:flutter_practice/base/widgets/big_circle.dart';
import 'package:flutter_practice/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 85,
        height: 300,
        child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyle.ticketBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21))),
                  child: Center(
                    child: Column(children: [
                      //show departure and destination with icons
                      Row(children: [
                        Text(
                          "NCY",
                          style: AppStyle.headlineStyleThree
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        BigDot(),
                        Expanded(
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(
                                    randomDivider: 6,
                                  ),
                                ),
                                Center(
                                    child: Transform.rotate(
                                        angle: 1.57,
                                        child: Icon(
                                          Icons.flight,
                                          color: Colors.white,
                                        )))
                              ],
                            )),
                        BigDot(),
                        Expanded(child: Container()),
                        Text(
                          "LDN",
                          style: AppStyle.headlineStyleThree
                              .copyWith(color: Colors.white),
                        )
                      ]),

                      SizedBox(
                        height: 3,
                      ),
                      //show departure and destination with time
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New York",
                              style: AppStyle.headlineStyleThree
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "8H 30M",
                              style: AppStyle.headlineStyleThree
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "London",
                              style: AppStyle.headlineStyleThree
                                  .copyWith(color: Colors.white),
                            )
                          ]),
                    ]),
                  ),
                ),
                Container(
                  height: 20,
                  color: AppStyle.ticketOrange,
                  child: Row(
                    children: [
                      BigCircle(isRight: false),
                      Expanded(child: Container()),
                      BigCircle(
                        isRight: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppStyle.ticketOrange,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Center(
                    child: Column(children: [
                      //show departure and destination with icons
                      Row(children: [
                        Text(
                          "NCY",
                          style: AppStyle.headlineStyleThree
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        BigDot(),
                        Expanded(
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(
                                    randomDivider: 6,
                                  ),
                                ),
                                Center(
                                    child: Transform.rotate(
                                        angle: 1.57,
                                        child: Icon(
                                          Icons.flight,
                                          color: Colors.white,
                                        )))
                              ],
                            )),
                        BigDot(),
                        Expanded(child: Container()),
                        Text(
                          "LDN",
                          style: AppStyle.headlineStyleThree
                              .copyWith(color: Colors.white),
                        )
                      ]),

                      SizedBox(
                        height: 3,
                      ),
                      //show departure and destination with time
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New York",
                              style: AppStyle.headlineStyleThree
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "8H 30M",
                              style: AppStyle.headlineStyleThree
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "London",
                              style: AppStyle.headlineStyleThree
                                  .copyWith(color: Colors.white),
                            )
                          ]),
                    ]),
                  ),
                ),
              ],
            )));
  }
}
