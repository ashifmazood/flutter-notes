import 'package:flutter/material.dart';

class Column2 extends StatelessWidget {
  const Column2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
       title: Text('COLUMN',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 50,fontWeight: FontWeight.w900),),
       backgroundColor:Colors.blue ,
       leading: Icon(Icons.menu,color: Colors.white,size: 50,),
       actions: [
        Icon(Icons.alarm,color: Colors.white,size: 50,)
       ],
      ),
      body: Column(
        children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.indigoAccent,
                ),
      
                 Text('TIMEALARM  ',style:TextStyle(color: Colors.deepOrange,fontSize: 10,fontWeight: FontWeight.w900))
                 ],
                 ),
                   
        ]
            ),
            );
                
  }
  }