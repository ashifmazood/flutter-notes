import 'package:flutter/material.dart';
import 'package:flutter_demo/eventmodel.dart';

class EventsScreen2 extends StatefulWidget {
  final Eventmodel event;
  const EventsScreen2({super.key, required this.event, });

  @override
  State<EventsScreen2> createState() => _EventsScreen2State();
}

class _EventsScreen2State extends State<EventsScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:   Center(child: Text(widget.event.event,style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w500),)),
        flexibleSpace: Container(
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
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
          child: Icon(Icons.arrow_back,color: Colors.white,))),
      
      body: 
 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Center(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTLIi-rKvz1rwKQrtgJPb8wqSH3VEr7g3GFw&s'),fit: BoxFit.fill)
                    ),
                    
                  ),
                ),
          
             Row(
               children: [
                 Text('Name : ',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
                 Text(widget.event.name,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
               ],
             ),
              Text('Place: ${widget.event.place}',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Date: ${widget.event.date}',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
              
                Text('Time: ${widget.event.time}',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
                ],
               )   ,
               Column(
                 children: [
                   Divider( color:Colors.white,),
                
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add more details',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                  Icon(Icons.add,color: Colors.white,size: 20,)
                ],
              ),
              Divider(
                color: Colors.white,
              ),
               ],
               ),
          ],
        ),
      ),
      
    );
  }
}