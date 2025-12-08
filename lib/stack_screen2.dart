import 'package:flutter/material.dart';

class Stackscreen2 extends StatefulWidget {
  const Stackscreen2({super.key});

  @override
  State<Stackscreen2> createState() => _Stackscreen2State();
}

class _Stackscreen2State extends State<Stackscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
           AppBar(
            title: Center(child: Text('ColorBox',style: TextStyle(color: Colors.indigo,fontSize: 40,fontWeight: FontWeight.w700),)),
           ),
      body: 
      Center(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color:Colors.limeAccent,
                    
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 225,
              left: 0,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 450,
              left: 0,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.purple,
              ),
            ),
            Positioned(
              bottom: 1,
              left: 0,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.deepOrange,
              ),
            ),
            Positioned(
              top: 0,
              left: 137,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.orange,
              ),
            ),
            Positioned(
              top: 225,
              left: 137,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              top: 450,
              left: 137,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.grey,
              ),
            ),
            Positioned(
              bottom: 1,
              left: 137,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.pink,
              ),
            ),
            Positioned(
              bottom: 1,
              left: 274,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 450,
              left: 274,
              child: Container(
                height: 180,
                width: 137,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 225,
              left: 274,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.black,
              ),
            ),
             Positioned(
              top: 0,
              left: 274,
              child: Container(
                height: 225,
                width: 137,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}