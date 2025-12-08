import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';

class Botton extends StatelessWidget {
  const Botton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(onTap: (){
        Navigator.push(context,MaterialPageRoute(builder:( context) => HomePage()));
      },
        child: Container(
          height: 50,
          width: 200,
          color: Colors.blue,
          
          child: Text('login',style: TextStyle(color:Colors.amberAccent,fontSize: 20),),
          
        ),
      ),
    );
  }
}