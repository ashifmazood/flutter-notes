import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(' Welcome\n        to\nHomepage',style: TextStyle(
                color: Colors.black,fontSize: 50,fontWeight: FontWeight.w600
              ),),
            ),
            CircleAvatar(radius: 80,backgroundColor: Colors.grey,child: 
            Icon(Icons.person,color: Colors.white,size: 150),),
             Text('Name',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
             SizedBox(height: 300,),
             InkWell(onTap: () {
               Navigator.pop(context);
             },
               child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.4,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown),
                child: Center(child: Text('back',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w700),)),
                
               ),
             )
            
          ],
        ),
      ),
    );
  }
}