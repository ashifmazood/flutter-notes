import 'package:flutter/material.dart';
import 'package:flutter_demo/alert.dart';
import 'package:flutter_demo/foodscreen.dart';
import 'package:flutter_demo/validator.dart';
import 'package:flutter_demo/wathsapp.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: 3,
        child: Column(
          children: [
            TabBar(tabs: [ Tab(icon: Icon(Icons.bus_alert),text: 'bus',),
              Tab(icon: Icon(Icons.bike_scooter),text: 'bike',),
              Tab(icon: Icon(Icons.train),text: 'Train',)
            ]),
            Expanded(
              child: TabBarView(children:[
                Whatsapp(),
                AlertScreen(),
                Foodscreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}