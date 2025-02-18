import 'package:flutter/material.dart';
import 'package:flutter_practice/base/res/media.dart';
import 'package:flutter_practice/base/res/styles/app_style.dart';
import 'package:flutter_practice/base/widgets/app_double_text.dart';
import 'package:flutter_practice/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      //we take listView sothat we make it scrollable
      body: ListView(children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: AppStyle.headlineStyleThree),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Book Tickets", style: AppStyle.headlineStyleOne),
                    ],
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo)
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Color(0xffd8d7c8)),
                    Text("Search"),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const AppDoubleText(
                  bigText: 'Upcomming Flights', smallText: 'View All'),
              const SizedBox(
                height: 20,
              ),
              TicketView(),
            ],
          ),
        ),
      ]),
    );
  }
}
