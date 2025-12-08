import 'package:flutter/material.dart';

class Trying extends StatefulWidget {
  const Trying({super.key});

  @override
  State<Trying> createState() => _TryingState();
}

class _TryingState extends State<Trying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
          //color: Colors.amber,
          height: 250,
          child: Stack(
           children: [ Center(
             child: Container(
                           height: 170,
                           width: double.infinity,
                          decoration: BoxDecoration( color:  Colors.red,borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 20,),
                               
                               Text('Get',style: TextStyle(color: Colors.white,fontSize: 20),),
                               Text('FREE COOKE',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                               Text('On every burgur',style: TextStyle(color: Colors.white))
                             ],
                            ),
                          ),
                         ),
           ),
                       Positioned(
                        right: -87,
                        top: 0,
                        
                        child: 
                       SizedBox(
                        height: 230,
                         child: Image.asset(
                          'colaBottil.png' ),
                       ),
                        ),
                         Positioned(
                        right: -5,
                        top: 90,
                        
                        child: 
                       SizedBox(
                        height: 135,
                         child: Image.asset(
                          'burggur.png' ),
                       ),
                        ),

           ],
          ),
        ),
      ),
    );
  }
}