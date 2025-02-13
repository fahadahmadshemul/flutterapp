import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My tickets"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text("Ticket Info"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", activeIcon: Icon((Icons.home_filled))),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", activeIcon: Icon((Icons.search_sharp))),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), label: "Tickets", activeIcon: Icon((Icons.airplane_ticket_sharp))),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp), label: "Profile", activeIcon: Icon((Icons.person))),
        ]
      ),
    );
  }
}
