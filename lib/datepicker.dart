import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
DateTime?_selectedDate;
Future<void>_pickDate(BuildContext context)  async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
     firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      );
      if(picked!=null&&picked!=_selectedDate){
        setState(() {
          _selectedDate=picked;
        });
      }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Column(
          children: [
            Text(_selectedDate==null? 'SELECT A DATE':_selectedDate.toString(),style: TextStyle(color: Colors.black,fontSize: 50),),
            TextButton(onPressed:() => _pickDate(context), child: Text('date',style: TextStyle(fontSize: 30),)),
          ],
        ),
      ),
    );
  }
}