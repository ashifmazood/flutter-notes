import 'package:flutter/material.dart';

class Radiobuttonscreen extends StatefulWidget {
  const Radiobuttonscreen({super.key});

  @override
  State<Radiobuttonscreen> createState() => _RadiobuttonscreenState();
}

class _RadiobuttonscreenState extends State<Radiobuttonscreen> {
  String _selectedOpstion = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          RadioListTile(value: 'Male',
          title: Text('Male',),
          
          groupValue: _selectedOpstion,
          onChanged: (value) {
            setState(() {
              _selectedOpstion = value!;
            });
          },
        ),
          RadioListTile(
            value: 'Female',
            title: Text('Female'),
            groupValue:_selectedOpstion ,
            onChanged: (value) {
              setState(() {
                _selectedOpstion = value!;
              });
            },
            ),
            RadioListTile(
              value: 'Other',
              title: Text('Other'),
              groupValue: _selectedOpstion,
              onChanged: (value) {
                setState(() {
                  _selectedOpstion = value!;
                });
              },)
        ],
      ),
    );
  }
}