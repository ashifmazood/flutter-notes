import 'package:flutter/material.dart';

class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('COLORS',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 50,fontWeight: FontWeight.w900),)),
        leading: Icon(Icons.color_lens,color: const Color.fromARGB(255, 255, 255, 255),size: 50,),
        actions: [
          Icon(Icons.color_lens_outlined,color: const Color.fromARGB(255, 255, 255, 255),size: 50,)
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(children: [
          Container(
            height: 228,
            width: 137,
            color: Colors.blue,
          ),
          Container(
            height: 228,
            width: 137,
            color: Colors.pink,
          ),
          Container(
            height: 228,
            width: 137,
            color: Colors.yellow,
          )
          ],
          ),
          Row(
            children: [
              Container(
                height: 228,
                width: 137,
                color: Colors.black,
              ),
              Container(
                height: 228,
                width: 137,
                color: Colors.orange,
              ),
                Container(
                  height: 228,
                  width: 137,
                  color: Colors.green,
                ),
                
            ],
          ),
          Row(children: [
          Container(
                  height: 228,
                  width: 137,
                  color: Colors.brown,
                ),
                Container(
                  height: 228,
                  width: 137,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  height: 228,
                  width: 137,
                  color: Colors.red,
                ),
          ],
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 137,
                child: Icon(Icons.apple,color: const Color.fromARGB(255, 9, 80, 40),size: 80,),
              ),
              Container(
                height: 150,
                width: 137,
                child: Icon(Icons.apple,color: const Color.fromARGB(255, 79, 4, 185),size: 80,),
              ),
              Container(
                height: 150,
                width: 137,
                child: Icon(Icons.apple,color: const Color.fromARGB(255, 197, 21, 21),size: 80,),
              )
            ],
          ),
        ],
      ),
    );
  }
}