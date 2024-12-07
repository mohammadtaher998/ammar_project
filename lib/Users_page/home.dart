import 'package:ammar_project/Users_page/QRCode.dart';
import 'package:ammar_project/Users_page/ActivityPage.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  // List of pages for bottom navigation
  final List<Widget> _pages = [
    home_page(),
    ActivityCardsForUsersn(),
QRCodeScannerPage(),
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
          selectedItemColor: Colors.red,  // Color when selected
        unselectedItemColor: Colors.black,  // Color when unselected
         selectedLabelStyle: const TextStyle(
          color: Colors.red,  // Font color when selected
          fontWeight: FontWeight.bold,  // Optional: Make the selected label bold
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,  // Font color when unselected
          
        ),
        showUnselectedLabels: true,  // Make sure unselected labels are visible
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'ِActivity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_outlined),
            label: 'Booking',
          ),
        
        ],
      ),
    );
  }
}
