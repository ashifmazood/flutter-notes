import 'package:flutter/material.dart';
import 'package:flutter_demo/macheinText002.dart';
import 'package:flutter_demo/machintext002.1.dart';

class BTM_MCHScreen extends StatefulWidget {
  const BTM_MCHScreen({super.key});
 
  @override
  State<BTM_MCHScreen> createState() => _BTM_MCHScreenState();
}

class _BTM_MCHScreenState extends State<BTM_MCHScreen> {
    int _currentIndex = 0;

   final List<Widget> _screen=[
    Macheintext002(),
    MchTextScreen2(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        
        items:[ BottomNavigationBarItem(
          icon: Icon(Icons.menu_open,size: 40,),
          label: ""
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,size: 40,),
            label: ""
            ) ,
        ]
        )
    );
  }
}