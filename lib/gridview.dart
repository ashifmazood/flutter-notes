import 'package:flutter/material.dart';
import 'package:flutter_demo/localdata.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: localData.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        crossAxisCount:3 ),
        
        itemBuilder: (BuildContext context , int index) {
          final data = localData[index];
          return Container(
            height: 100,
            width: 100,
           
            decoration: BoxDecoration(border:Border.all(color: Colors.yellow), color: Colors.black,
            image: DecorationImage(image:NetworkImage(data['image']),fit: BoxFit.fill )
            ),
          );
        }
      
      ),
    );
  }
}