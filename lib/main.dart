import 'package:flutter/material.dart';
import 'package:flutter_practice/Fragment/AlermFragment.dart';
import 'package:flutter_practice/Fragment/BalanceFragment.dart';
import 'package:flutter_practice/Fragment/ContactFragment.dart';
import 'package:flutter_practice/Fragment/EmailFragment.dart';
import 'package:flutter_practice/Fragment/HomeFragment.dart';
import 'package:flutter_practice/Fragment/PersonFragment.dart';
import 'package:flutter_practice/Fragment/SearchFragment.dart';
import 'package:flutter_practice/Fragment/SettingsFragment.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecom",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.green,
            bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(2),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(icon: Icon(Icons.home, color: Colors.white,)),
                Tab(icon: Icon(Icons.search, color: Colors.black,)),
                Tab(icon: Icon(Icons.settings, color: Colors.black)),
                Tab(icon: Icon(Icons.email, color: Colors.black)),
                Tab(icon: Icon(Icons.contact_mail, color: Colors.black)),
                Tab(icon: Icon(Icons.person, color: Colors.black)),
                Tab(icon: Icon(Icons.access_alarm, color: Colors.black)),
                Tab(icon: Icon(Icons.wallet, color: Colors.black)),
              ],
            ),

          ),
          body: TabBarView(
              children:[
                HomeFragment(),
                SearchFragment(),
                SettingsFragment(),
                EmailFragment(),
                ContactFragment(),
                PersonFragment(),
                AlermFragment(),
                BalanceFragment(),
              ],
          ),
        )
    );
  }
}
