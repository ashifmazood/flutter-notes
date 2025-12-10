import 'package:flutter/material.dart';

class SharedprefScreen extends StatefulWidget {
  const SharedprefScreen({super.key,required this.email,required this.name,required this.password});
   final String name;
   final String email;
   final String password;
  @override
  State<SharedprefScreen> createState() => _SharedprefScreenState();
}

class _SharedprefScreenState extends State<SharedprefScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(child: Text('________')),
      ),
      body: Column(
        children: [
          Text(widget.name),
          Text(widget.email),
          Text(widget.password),
        ],
      ),
    );
  }
}