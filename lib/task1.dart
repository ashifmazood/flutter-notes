import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title:Center(child:Text('SHOP HOPE',style: TextStyle(color:Colors.deepOrange,fontWeight: FontWeight.w900),) ,),
      backgroundColor:Colors.grey ,
      leading: Icon(Icons.shop_2_rounded,color: const Color.fromARGB(255, 250, 2, 2),size: 35,),
      actions: [
        Text('MENU ',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w600),)
      ],
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration:BoxDecoration(
            border: Border.all(
              color: Colors.deepPurple,
              width: 7,
            ),
            color: Colors.lightGreen
          ),
           child: Icon(Icons.shop_2_outlined,color: const Color.fromARGB(255, 232, 3, 3),size: 130,),
        
          
        ),
      ),
    );
  }
}