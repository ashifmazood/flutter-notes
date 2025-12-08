import 'package:flutter/material.dart';
import 'package:flutter_demo/mechine_test1.1.dart';

class MechineTest1 extends StatefulWidget {
  const MechineTest1({super.key});

  @override
  State<MechineTest1> createState() => _MechineTest1State();
}

class _MechineTest1State extends State<MechineTest1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircleAvatar(radius: 170,
          backgroundImage:
           NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5QuC_r_eFblIS7yjkwW0HpJU-pqw-3NKWLA&s'),)),
           SizedBox(height: 130,),
           InkWell
           (onTap: () {
             Navigator.push(context,MaterialPageRoute(builder:(context) => MechineTestHome()));
           },
             child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
              child: Center(child: Text('Get Started',style: TextStyle(color: Colors.red,
              fontWeight: FontWeight.w900,fontSize: 20),)),
             ),
           )
        ],
      ),
       
    
    );
  }
}