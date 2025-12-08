import 'dart:async';

import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [SizedBox(height: 10,),
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                 color: Colors.black,
                borderRadius: BorderRadius.circular(360)),
             
              child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('APPLE',style: TextStyle(color: Colors.amber,fontSize: 40,fontWeight: FontWeight.w900),),
                    Icon(Icons.apple,color: Colors.white,size:100,),
                    Text('APPLE',style: TextStyle(color: Colors.amber,fontSize: 40,fontWeight: FontWeight.w900),),
                  ],
                  
                ),
              ),
                
            ),
            Icon(Icons.apps_outlined,color: Colors.black45,size: 100,),
            Text('more...',style: TextStyle(color: Colors.deepOrange,fontSize: 40,fontWeight: FontWeight.w900),),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.deepPurple,
            )
          ],
                 ),
       ),
    );
  }
}