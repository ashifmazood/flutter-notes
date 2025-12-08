import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('masood')),
      backgroundColor: Colors.cyanAccent,
      leading: Icon(Icons.car_repair_sharp,color: Colors.red,size:40 ,),
      actions: [
         Text('ION',style: TextStyle(color: Colors.deepOrangeAccent,fontSize:30,fontWeight: FontWeight.w600, ),)
         ],
      ),
      body: InkWell(onTap: () {
        Navigator.pop(context);
      },
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepOrange,
              width: 8
              ),
              color: const Color.fromARGB(255, 7, 10, 203),
              
              ),
              child: Icon(Icons.back_hand,color: Colors.black,size: 50,),
              
              ),
      ),
            
            
    );
  }
}