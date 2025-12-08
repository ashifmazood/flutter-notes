import 'package:flutter/material.dart';

class Timepickerscreen extends StatefulWidget {
  const Timepickerscreen({super.key});

  @override
  State<Timepickerscreen> createState() => _TimepickerscreenState();
}

class _TimepickerscreenState extends State<Timepickerscreen> {
  TimeOfDay?_selectedTime;

  Future<void>_pickTime(BuildContext context)  async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
   initialTime: TimeOfDay.now()
      );
      if(picked!=null&&picked!=_selectedTime){
        setState(() {
          _selectedTime=picked;
        });
      }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('select a time',style: TextStyle(color: Colors.black),),
          TextButton(onPressed: () => _pickTime(context),
          
          child:Icon(Icons.punch_clock))
        ],
      ),
    );
  }
}