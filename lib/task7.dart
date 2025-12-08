import 'package:flutter/material.dart';

class Task7 extends StatelessWidget {
  const Task7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      // appBar:AppBar(
        
      //   backgroundColor: Colors.white,
      //   leading: Icon(Icons.search,color: Colors.blueGrey,size: 45,weight: 3,),
     // )
     body: Column(
       children: [
         Container(
          height: 50,
          width: 430,
          child:
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Icon(Icons.search,color: Colors.blueGrey,size: 45,weight: 100,),
             ],
           ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
         ),
        SizedBox(height: 150,),
         Center(
           child: Row(
             children: [SizedBox(width: 70,),
               CircleAvatar(radius: 60,
               backgroundColor: Colors.grey,
               backgroundImage: NetworkImage('https://media-public.canva.com/7NXOc/MADakI7NXOc/2/tl.png'),
                ),
                SizedBox(width: 30,),
                Text('Name..\n age..',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w500),)
             ],
           ),
         ),SizedBox(height: 70,),
         Container(
          height: 200,
          width:400 ,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
          child:Center(
            child: Row(
              children: [SizedBox(width: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.brown,),
                  child : Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRatVzDGmEFyVULU8VupVmqasEG7Ia7fJxTcw&s",fit: BoxFit.cover,),
                  ),
                
                SizedBox(width: 20,),
                Text('Place\nCompany\nRole ',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
             
         ),SizedBox(height: 10,),
         Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
          child: Row(
            children: [SizedBox(width: 20,),
              
                Text('Place\nCompany\nRole',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),),
                SizedBox(width: 20,),
                Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blueGrey),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRatVzDGmEFyVULU8VupVmqasEG7Ia7fJxTcw&s",fit: BoxFit.cover,),
                ),
            
            ],
          ),
          ),
         
       ],
     ),
     
     
    );
  }
}