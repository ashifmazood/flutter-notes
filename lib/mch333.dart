import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333.1.dart';

class Mch333 extends StatefulWidget {
  const Mch333({super.key});

  @override
  State<Mch333> createState() => _Mch333State();
}

class _Mch333State extends State<Mch333> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 193, 17, 4),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => Mch3331(),));
        },
        child: Center(child: Text('Urban Bites',style: TextStyle(color: Colors.amberAccent,fontSize: 30),))),
    );
  }
}