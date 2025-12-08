import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Stack(
         // alignment: Alignment.center,
          children: [
            Container(width: 150,height: 200,color: Colors.blue,),
              
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(width: 100,height: 100,color: Colors.green,)),
              Container(height: 70,width: 70,color: Colors.red,)
          ],
        ),
      ),
    );
  }
}