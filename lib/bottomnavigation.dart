import 'package:flutter/material.dart';
import 'package:flutter_demo/lottie.dart';
import 'package:flutter_demo/task10.dart';
import 'package:flutter_demo/wathsapp.dart';
import 'package:lottie/lottie.dart';

class BTMnavigationBarscreen extends StatefulWidget {
  const BTMnavigationBarscreen({super.key});

  @override
  State<BTMnavigationBarscreen> createState() => _BTMnavigationBarscreenState();
}

class _BTMnavigationBarscreenState extends State<BTMnavigationBarscreen> {
  int _currentIndex = 0;
  //List of screens
  final List<Widget>_screen = [
    LottieScreen(),
    Whatsapp(),
    Task10()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.red,
        
        items:[ BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile')
        ]
        ),
    );
  }
}