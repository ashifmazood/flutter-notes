import 'package:flutter/material.dart';

class Task9 extends StatelessWidget {
  const Task9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('PROFILE',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w900),)),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.more_vert,color: Colors.white,size: 50,weight: 100,)
        ],
      ),
      body: 
      Center(
        child: Column(
          children: [
            SizedBox(height: 70,),
            CircleAvatar(radius: 150,backgroundColor: Colors.blue,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Tj-cUSG5ET4OfrO-XhCWqdKN0ah70IcGAA&s',scale: 100),
            ),
            SizedBox(height: 80,),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey),
              child: Row(
                children: [SizedBox(width:30 ,),
                  Icon(Icons.person,color: Colors.black,size: 50,weight: 50,),
                  SizedBox(width:80 ,),
                  Center(child: Text('Name',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),))
                ],
              ),
            ),
            SizedBox(height: 80,),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey),
              child: Row(
                children: [SizedBox(width: 30,),
                  Icon(Icons.call,color: Colors.black,size: 50,weight: 50,),
                  SizedBox(width: 80,),
                  Text('Phone',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),)
                ],
              ),
            ),
            SizedBox(height: 80,),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey),
              child: Row(
                children: [SizedBox(width: 30,),
                  Icon(Icons.mail,color: Colors.black,size: 50,weight: 50,),
                  SizedBox(width: 80,),
                  Text('Email',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
                ],
              ),
            )
            ,SizedBox(height: 40,),
            
            Row(
              children: [SizedBox(width: 30,),
                Text('About..',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
              ],
            )
          ],
        ),
      ),
    );
  }
}