import 'package:flutter/material.dart';

class Taskscreen extends StatefulWidget {
  const Taskscreen({super.key});

  @override
  State<Taskscreen> createState() => _TaskscreenState();
}

class _TaskscreenState extends State<Taskscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text('Listview',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w500),)),
        leading: CircleAvatar(radius: 10,backgroundColor: Colors.black87,
        child: Icon(Icons.person,color: Colors.white,size: 40,),
        ),
        actions: [
          Icon(Icons.more_vert,color: Colors.black,size: 40,)
        ],
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration:BoxDecoration(color:  Colors.greenAccent,borderRadius: BorderRadius.circular(20)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: 
                    BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAxt_0PJ8T-KXXZa6YvyLG9iwdnCjpy-VfAQ&s'),fit: BoxFit.fill)
                    ),
                  ),
                  SizedBox(width: 40,),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('text1',style: TextStyle(color: Colors.black,fontSize: 40),),
                      Text('text2',style: TextStyle(color: Colors.black,fontSize: 40),),
                    ],
                  )
                ],
              ),
            ),
            Text('Text',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),),
            ListView.separated(
              itemCount: 3,
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                
              
               
           return Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreen),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(radius: 40,backgroundColor: Colors.yellowAccent,),
                    SizedBox(width: 10,),
                    CircleAvatar(radius: 40,backgroundColor: Colors.yellowAccent,),
                    SizedBox(width: 70,),
                    Text('Text',style: TextStyle(color:Colors.deepOrange,fontSize: 40),)
                  ],
                ),
              ),
            );
            
              },
              separatorBuilder: (BuildContext context,int index) {return Divider(color: Colors.white,);}
              
            )
          ],
        ),
      ),
    );
  }
}