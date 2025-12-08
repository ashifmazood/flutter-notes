import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
children: [
  Center(
    child: Container(
      height: 200,
      width: 500,
      color: Colors.black,
      child:  Column(
        children: [
          Icon(Icons.phone,color: Colors.blue,size: 40,),
          Text('text',style: TextStyle(color: Colors.deepOrange,fontSize: 40,fontWeight: FontWeight.w900),),
          Icon(Icons.phone_android_rounded,color: Colors.blue,size: 40,),
          Text('text',style: TextStyle(color: Colors.deepOrange,fontSize: 40,fontWeight: FontWeight.w900),),
        ],
      ),
    ),
    
  ),
  Text('text',style: TextStyle(color: Colors.deepOrange,fontSize: 40,fontWeight: FontWeight.w900),),
  Text('text',style: TextStyle(color: Colors.deepOrange,fontSize: 40,fontWeight: FontWeight.w900),),
  Container(
    height: 200,
    width: 500,
    color: Colors.black,
    child: Center(
      child: Column(
        children: [
          Row(
            children: [
              Text('text',style: TextStyle(color: Colors.deepOrange,fontSize: 40,fontWeight: FontWeight.w900),),
              Icon(Icons.phone_android_outlined,color: Colors.purpleAccent,size: 40,)
            ],
            
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Icon(Icons.phone_android,color: const Color.fromARGB(255, 243, 125, 164),size: 40,),
              Text('text',style: TextStyle(color: Colors.grey,fontSize: 40,fontWeight: FontWeight.w900),)
            ],
          )
        ],
      ),
    ),
    
  ),
  SizedBox(height: 60,),
  Center(
    child: Container(
      height: 50,
      width: 500,
      color: Colors.black,
    ),
  )
  
],      ),
    );
  }
}