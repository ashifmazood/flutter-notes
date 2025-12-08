import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.deepOrange,
     appBar: AppBar(title: Center(child: Text('MANGO',style: TextStyle(color: Colors.amberAccent,fontSize: 50,fontWeight:FontWeight.w900)),),
     backgroundColor: Colors.black,
     leading: Icon(Icons.person,color: Colors.white,size: 50,),
     actions: [
      Icon(Icons.more_vert,color: Colors.white,size: 50,),
      Icon(Icons.menu,color: Colors.white,size: 50,)
     ],
     ),
     body: Center(
       child: Container(
        height: 400,
        width: 400,
        color: Colors.black87,

        child: Center(
          child: Container(
            height: 350,
            width: 350,
            color: Colors.blue,
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                color:Colors.blueGrey,
                child: Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text('MANGO',style: TextStyle(color: Colors.limeAccent,fontSize: 60,fontWeight: FontWeight.w900),),
                      
                    ),
                  )
                ),
              ),
            ),
          ),
        ),
       ),
     ),
    );
  }
}