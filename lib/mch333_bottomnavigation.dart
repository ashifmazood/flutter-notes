import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333Profile.dart';
import 'package:flutter_demo/mch333_screen1.dart';
import 'package:flutter_demo/mch333screen2.dart';
import 'package:flutter_demo/mch333screen3.dart';


class Mch33BNB extends StatefulWidget {
  const Mch33BNB({super.key});

  @override
  State<Mch33BNB> createState() => _Mch33BNBState();
}

class _Mch33BNBState extends State<Mch33BNB> {
  int _currentIndex = 0;

  final List<Widget>_screen=[
    Mch333screen1(),
    Mch333screen2(),
    Mch333screen3(),
    Mch333profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:_screen  [_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey.shade300,
        
        items:[ BottomNavigationBarItem(
          icon: Icon(Icons.home,size: 40,color: Colors.grey,),
          label: "Home",
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,size: 40,color: Colors.grey),
            label: "Shope",
            ) ,
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,size:  40,color: Colors.grey),
            label: "favorate",
            ) ,
           BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined,size: 40,color: Colors.grey,),
            label: "Profile",
            
            ) ,

            
        ]
        )
    );
  }
}