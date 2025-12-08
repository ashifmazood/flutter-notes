import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title:Center(child:Text('FLUTTER',style: TextStyle(color: Colors.blueAccent ,fontSize: 50, fontWeight:FontWeight.w900),) ,) ,
      backgroundColor:Colors.yellowAccent ,
      leading: Icon(Icons.menu,color: Colors.black,size: 25,),
      actions: [
        Icon(Icons.person,color: Colors.black,size: 25,),
        Icon(Icons.more_vert,color: Colors.black,size: 25,)
        ],
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color:Colors.red,
          
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Icon(
              Icons.code,
              color: Colors.black,
              size:200,
              ),
          ),
        ),
            ),
      )
        );
  }
}