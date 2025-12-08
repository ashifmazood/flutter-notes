import 'package:flutter/material.dart';

class Drowyerscreen extends StatefulWidget {
  const Drowyerscreen({super.key});

  @override
  State<Drowyerscreen> createState() => _DrowyerscreenState();
}

class _DrowyerscreenState extends State<Drowyerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drowyer',style: TextStyle(color: Colors.black),),
        
      ),
      drawer:Drawer(
       
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Welcome User',
              style: TextStyle(color: Colors.white,fontSize: 20),
              )
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
          ],
        ),
      ) ,
    );
  }
}