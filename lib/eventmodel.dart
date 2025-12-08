import 'dart:math';

import 'package:flutter/material.dart';

class Eventmodel {
  String event;
  String place;
  String name;
  String image;
  String date;
  String time;
  Eventmodel({required this.event,required this.name,required this.place,required this.image,required this.date,required this.time});
}









List<Eventmodel> EventsData=[
Eventmodel(event: 'Event 1', name: 'onam', place: 'kerala', image: '', date: '25/5/2030', time:'10:10am') ,
Eventmodel(event: 'Event 2', name: 'x-mas', place: 'kerala', image: '', date: '01/10/2030', time:'3:00am') ,
Eventmodel(event: 'Event 3', name: 'family function', place: 'kerala', image: '', date: '22/6/2030', time:'2:00pm'), 
Eventmodel(event: 'Event 4', name: 'birthday party', place: 'kerala', image: '', date: '30/7/2030', time:'12:00am') ,
Eventmodel(event: 'Event 5', name: 'merrage', place: 'kerala', image: '', date: '05/8/2030', time:'01:00pm') ,

];