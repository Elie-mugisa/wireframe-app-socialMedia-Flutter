import 'package:flutter/material.dart';
import 'package:ui_instaclone/screens/Search.dart';
import 'package:ui_instaclone/screens/account.dart';
import 'package:ui_instaclone/screens/home.dart';
import 'package:ui_instaclone/screens/reels.dart';
import 'package:ui_instaclone/screens/shop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedOption = 0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedOption = index;
    });
  }

  final List<Widget> _children = const [
    MyHome(),
    Search(),
    Reels(),
    Shop(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedOption],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedOption,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
