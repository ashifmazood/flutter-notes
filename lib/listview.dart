import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
         Expanded(
          child: ListView.separated(
            itemCount: 10,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true ,
            scrollDirection:Axis.vertical ,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 50,
                color:  Colors.blue,
              );
            }, separatorBuilder: (BuildContext context, int index) { return Divider(color: Colors.amber);},
            ),
        ),
      
      //  ListView(
      //   children: [
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
          
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //     Text('hello',style: TextStyle(color: Colors.black,fontSize: 50),),
      //   ],
      // ),
    );
  }
}