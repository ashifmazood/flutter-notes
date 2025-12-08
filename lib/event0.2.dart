

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_demo/eventmodel.dart';

class EventScreen3 extends StatefulWidget {
  const EventScreen3({super.key});

  @override
  State<EventScreen3> createState() => _EventScreen3State();
}

class _EventScreen3State extends State<EventScreen3> {


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
TextEditingController eventname=TextEditingController();
TextEditingController eventplace =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:  Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
        Colors.deepOrange,
                      Colors.indigo
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  ),
  leading:  InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Colors.white,),
            ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
           
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Event name',style: TextStyle(color: Colors.white,fontSize: 20),),
            
            TextFormField(
              controller: eventname,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                
                hintText: '',
                labelText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,width: 2,
                  ),
                  
                ),
                enabled: true,
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black,width: 3)
                ),
                fillColor: Colors.white,
                filled: true,
                
                
              ),
            ),
              ],
            ),
             Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Place',style: TextStyle(color: Colors.white,fontSize: 20),),
            
              TextFormField(
                controller: eventplace,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                
                hintText: '',
                labelText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,width: 2,
                  ),
                  
                ),
                enabled: true,
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black,width: 3)
                ),
                fillColor: Colors.white,
                filled: true,
                
                
              ),
            ),
               ],
             ),

             SizedBox(height: 25,),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                    ),
                    child: 
                    Center(
                      child: Text(_selectedDate==null?'Date':_selectedDate.toString(),style: TextStyle(
                        color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                  onTap: () => _pickDate(context),
                ),
             
            InkWell(
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width*0.45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                  ),
                  child: 
                  Center(
                    child: Text(_selectedTime==null?'Time':_selectedTime.toString(),style: TextStyle(
                      color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                onTap: () => _pickTime(context),
            ),
             ],
            ),
            SizedBox(height: 200,),
        
            InkWell(
              child: Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: Center(
                    child: Text('Apply',style: TextStyle(color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              ),
              onTap: (){
                
              final event=  Eventmodel(event: "2", name: eventname.text, place: eventplace.text, image: "", date: _selectedDate.toString(), time: _selectedTime.toString());
              EventsData.add(event);
            log("  event added");
              Navigator.pop(context);
              }
              ),
              SizedBox(height: 100,)
            
            // ElevatedButton(
            //       onPressed: () {
            //         if (_formKey.currentState!.validate()) {
            //           ScaffoldMessenger.of(context).showSnackBar(
            //             const SnackBar(content: Text('Email is valid!')),
            //           );
            //         }
            //       },
            //       child: const Text('Submit'),
            //     ),
            
          ],
        ),
      ),

    );
  }
}