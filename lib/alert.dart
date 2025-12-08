import 'package:flutter/material.dart';
import 'package:flutter_demo/Events.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ElevatedButton(onPressed: () {
        showDialog(context: context, builder:(context) => AlertDialog(title: Text('Login'),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Cancel')),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Events(),));
          }, child: Text('Ok'))
        ],
        content: Text('Are you shure to login'),
        ),);
      }, child: Icon(Icons.cabin)
      )
    );
  }
}