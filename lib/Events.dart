import 'package:flutter/material.dart';
import 'package:flutter_demo/event0.2.dart';
import 'package:flutter_demo/eventmodel.dart';
import 'package:flutter_demo/events.0.1.dart';
import 'package:flutter_demo/localdataEvents.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Events',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w500),),
        actions: [
          Icon(Icons.more_vert,size: 40,color: Colors.black,weight: 100,),
          
        ],
        // leading: CircleAvatar(radius: 15,child: Icon(Icons.person_2_outlined),),
        
      ),
      drawer: Drawer(
      
         child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan),
              child: CircleAvatar(radius: 30,backgroundColor: Colors.black,),
              ),
              ListTile(
                title: Text('     Name',style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              ListTile(
                leading: Icon(Icons.location_pin,),
                title: Text('Place',style: TextStyle(color: Colors.black,fontSize: 30),),
              ),

          ],
         ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: ListView.separated(
            itemCount: EventsData.length,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            
            itemBuilder: (context, index) {
              final data =EventsData[index];
              return InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => EventsScreen2(event: data),));
              },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  gradient:LinearGradient(
                    colors: [
                      Colors.deepOrange,
                      Colors.indigo
                    ]
                    )
                     ),
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Text(data.event,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                            Text(
                              data.name,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),
                              
                            ),
                            Text(data.place,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
                           
                          ],
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(data.date,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                            Text(data.time,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),)
                          ],
                        )
                      ],
                     ),
                ),
              );
            
            },
            separatorBuilder: (BuildContext context ,int index){
              return SizedBox(height: 20,);
            }
            ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        
        backgroundColor: Colors.black,
        onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => EventScreen3()));
        },
        child: Icon(Icons.add,color: Colors.white,weight:500,size: 50,),
         ) ,
    );
  }
}