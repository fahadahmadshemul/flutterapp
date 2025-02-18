import 'package:flutter/material.dart';
import 'package:flutter_practice/base/res/styles/app_style.dart';
import 'package:flutter_practice/base/widgets/app_layout_builder_widget.dart';
import 'package:flutter_practice/base/widgets/big_circle.dart';
import 'package:flutter_practice/base/widgets/big_dot.dart';
import 'package:flutter_practice/base/widgets/text_style_fourth.dart';
import 'package:flutter_practice/base/widgets/text_style_third.dart';

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
                //########### Blue part of the ticket ###########
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
                        TextStyleThird(
                          text: "NCY",
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
                        TextStyleThird(text: "LDN")
                      ]),

                      SizedBox(
                        height: 3,
                      ),
                      //show departure and destination with time
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 100,
                                child: TextStyleFourth(text: "New York")),
                            TextStyleFourth(text: "8H 30M"),
                            SizedBox(
                                width: 100,
                                child: TextStyleFourth(
                                    text: "London", align: TextAlign.end))
                          ]),
                    ]),
                  ),
                ),
                //########### Divider part of the ticket ###########
                Container(
                  height: 20,
                  color: AppStyle.ticketOrange,
                  child: Row(
                    children: [
                      BigCircle(isRight: false),
                      Expanded(
                          child: AppLayoutBuilder(
                            randomDivider: 20,
                            width: 6,
                          )),
                      BigCircle(
                        isRight: true,
                      ),
                    ],
                  ),
                ),
                //########### Orange part of the ticket ###########
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
                        TextStyleThird(text: "1st May"),
                        Expanded(child: Container()),
                        Expanded(
                          child: TextStyleThird(text: "8:00 AM"),
                        ),
                        Expanded(child: Container()),
                        TextStyleThird(text: "23")
                      ]),

                      SizedBox(
                        height: 3,
                      ),
                      //show departure and destination with time
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextStyleThird(text: "Date"),
                            TextStyleThird(text: "Deparature Time"),
                            TextStyleThird(text: "Number"),
                          ]),
                    ]),
                  ),
                ),
              ],
            )));
  }
}
