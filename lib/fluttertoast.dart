import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fluttertoastscreen extends StatelessWidget {
  const Fluttertoastscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:() {
        Fluttertoast.showToast(
          msg: 'hello user',
          backgroundColor: Colors.black,
          textColor: Colors.white
        );
      },),
    );
  }
}