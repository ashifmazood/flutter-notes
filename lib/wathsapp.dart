import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo/localdata.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('WhatsApp',style: TextStyle(
          color: Colors.white,fontSize: 35,fontWeight: FontWeight.w700,
        ),
        
        ),
      actions: [
        Icon(Icons.qr_code_scanner,color: Colors.white,size: 30,),
        SizedBox(width: 20,),
        Icon(Icons.camera_alt,color: Colors.white,size: 30,),
        SizedBox(width: 20,),
        Icon(Icons.more_vert,color: Colors.white,size: 30,)
      ],
      ),
      bottomNavigationBar:Container(
        height: 90,
        width: double.infinity,
        color: Colors.black,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container
                
                (height: 50,
                width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                color: Colors.green[300]
                ),
                  child: Icon(Icons.message,color: Colors.white,size: 35,)),
                Text('Chats',style: TextStyle(color: Colors.white,fontSize: 20),)
                
              ],
            ),
             Column(
               children: [
                 Icon(Icons.update_sharp,color: Colors.white,size: 35,),
                 Text('Updates',style: TextStyle(color: Colors.white,fontSize: 20),)
               ],
             ),
              Column(
                children: [
                  Icon(Icons.groups_2_outlined,color: Colors.white,size: 35,),
                  Text('Communitties',style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
               Column(
                 children: [
                   Icon(Icons.call_outlined,color: Colors.white,size: 35,),
                   Text('Calls',style: TextStyle(color: Colors.white,fontSize: 20),)
                 ],
               ),
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        
        backgroundColor: Colors.lightGreenAccent.shade400,
        child: Icon(Icons.add_box,color: Colors.black,size: 35,),
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Ask Meta AI or Search',hintStyle: TextStyle(color: Colors.grey),
                
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12),
                borderRadius: BorderRadius.circular(20)
                ),
                enabled: true,
                focusColor: Colors.grey,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey,width: 3),
                borderRadius: BorderRadius.circular(20)
                ),
                fillColor: Colors.grey[850],
                filled: true,
                prefixIcon: Icon(Icons.search)
              ),
              keyboardType: TextInputType.phone,
              cursorColor: Colors.white,
              
              ),
          ),
          
            SizedBox(height: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: ListView.separated(
                  itemCount: localData.length,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,

                itemBuilder: (context, index) { 
                  final data= localData[index];
                  return
                   Container(
                    
                    height: 80,
                    width: double.infinity,
                    child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(radius: 35,backgroundColor: Colors.grey,
                            backgroundImage:NetworkImage(data['image']) ,
                            // child: Icon(Icons.person,color: Colors.grey.shade200,size: 70,)
                            ),
                                SizedBox(width:10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data['Name'],style:TextStyle( color: const Color.fromARGB(255, 223, 214, 214),fontWeight: FontWeight.w500,
                            fontSize: 25
                            ) 
                            ,),
                            Text(data['sub text'],style: TextStyle(color: Colors.grey.shade600,
                            fontSize: 20,
                            ),
                            textAlign: TextAlign.start,)
                          ],
                        ),
                          ],
                        ),
                    
                        SizedBox(width: 50,),
                        Column(crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('00:00',style: TextStyle(color: Colors.grey.shade600,
                            fontSize: 15
                            ),textAlign: TextAlign.start,),SizedBox(width: 50,),
                            SizedBox(height: 20,),
                            CircleAvatar(radius: 12,backgroundColor:
                             Colors.lightGreenAccent.shade400,
                            child: Center(
                              
                              child: Text('3',textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black,fontSize: 20,
                              fontWeight: FontWeight.w600
                              ),),
                            ),
                            )
                          ],
                        )
                
                      ],
                    ) ,
                  );
                },
                 separatorBuilder:(BuildContext context , int index ) {return Divider(color: Colors.grey,); }
                 ),
              ),
            ) 
            
        ],
      ),
    );
  }
}