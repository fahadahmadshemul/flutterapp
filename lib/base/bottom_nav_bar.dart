import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final AppScreen = [
    const HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child: Text("Tickets")),
    const Center(child: Text("Profile")),
  ];

  //change out index for BottomNavBar
  int __selectedIndex = 0;

  void __onItemTapped(int index) {
    setState(() {
      __selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreen[__selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: __selectedIndex,
          onTap: __onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                activeIcon: Icon((Icons.home_filled))),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                activeIcon: Icon((Icons.search_sharp))),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined),
                label: "Tickets",
                activeIcon: Icon((Icons.airplane_ticket_sharp))),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp),
                label: "Profile",
                activeIcon: Icon((Icons.person))),
          ]),
    );
  }
}
