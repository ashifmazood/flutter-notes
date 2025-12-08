import 'package:flutter/material.dart';
import 'package:flutter_demo/accetimage.dart';
import 'package:flutter_demo/foodscreen.dart';
import 'package:flutter_demo/task12screan.dart';
import 'package:flutter_demo/task12screen2.dart';
import 'package:flutter_demo/textfiledbotton.dart';

class Bottonscreen extends StatelessWidget {
  const Bottonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Foodscreen()));
      },
      child: Icon(Icons.ac_unit_sharp),
      
      ),
      body: Column(
        children: [
           TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Textfiledbotton()));
              
            }, child: Text("data")),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen12()));
              
            }, icon: Icon(Icons.ac_unit_sharp)),

            ElevatedButton(onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Accetimage()));
              
            },
            child: Icon(Icons.ads_click_outlined), )
        ],
      ),
    );
  }
}