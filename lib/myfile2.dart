import 'package:flutter/material.dart';

class Myfile2 extends StatelessWidget {
  const Myfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('enter your products ditails',style: TextStyle(color: Colors.black),),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'enter ditail',
              labelText: 'diails'
            ),
          )
        ],
      ),
    );
  }
}