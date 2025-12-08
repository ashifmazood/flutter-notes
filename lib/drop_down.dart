import 'package:flutter/material.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  String?selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton<String>(
            value: selectedValue,
            hint: const Text('Select a fruit'),
            items: const[
              DropdownMenuItem(value: 'Apple',child: Text('Apple'),),
              DropdownMenuItem(value: 'Banana',child: Text('Banana')),
              DropdownMenuItem(value: 'Orenge',child: Text('Orenge'))
            ], onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            )
        ],
      ),
    );
  }
}