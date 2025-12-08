import 'package:flutter/material.dart';

class Togglebotton extends StatefulWidget {
  const Togglebotton({super.key});

  @override
  State<Togglebotton> createState() => _TogglebottonState();
}

class _TogglebottonState extends State<Togglebotton> {
  bool isON=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Switch(value:isON , onChanged: (value) {
            setState(() {
              isON=!isON;
            print(isON);
            }
            );
            
          },
          )
          ),
          Text(isON?"ON":"OFF")
        ],
      ),
      
      
      
    );
  }
}