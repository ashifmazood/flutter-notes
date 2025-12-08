import 'package:flutter/material.dart';
import 'package:flutter_demo/localdata2.dart';

class Taskpg1 extends StatefulWidget {
  const Taskpg1({super.key});

  @override
  State<Taskpg1> createState() => _Taskpg1State();
}

class _Taskpg1State extends State<Taskpg1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(color: const Color.fromARGB(255, 55, 55, 55),borderRadius: BorderRadius.circular(20)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(radius: 80,
                  backgroundImage:
                   NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeAYXAJKTr_JVXLoQi2peMaxlqWjwBasUyWw&s'),),
                  Column(
                    children: [
        
                    
                  SizedBox(height: 50,),
                  Text('Arun',style:TextStyle(color: Colors.white70,fontSize: 40,fontWeight: FontWeight.w700) ,),
                  Text('Followers',style:TextStyle(color: Colors.white70,fontSize: 40,fontWeight: FontWeight.w700) ,),
                  Icon(Icons.favorite_border,color: Colors.white70,size: 30,),
                  Text('Rating',style:TextStyle(color: Colors.white70,fontSize: 40,fontWeight: FontWeight.w700) ,)
                    ],
                  )
                ],
              ),
            ),
            Text('followers',style: TextStyle(color:Colors.white ,fontSize: 40,fontWeight: FontWeight.w800),),
            SizedBox(
              height: 100,
              child: ListView.separated(
                itemCount: 10,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                
                itemBuilder: (context, index) {
                  final data = localData2[index];
                return CircleAvatar(
                  radius: 50,backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(data['image2'],scale: 40),
                );
              },
              separatorBuilder: (context, index) {
                
                return const SizedBox(
                  width: 10,
                );
              },
              ),
            ),
            Text('Posts',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w700),),
            Expanded(
              child: GridView.builder(
                itemCount: localData2.length,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2
                  ),
                 itemBuilder: (context, index) {
                  final data = localData2[index];
                   return Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(color: Colors.grey,
                    image: DecorationImage(image: NetworkImage(data['image']),fit: BoxFit.fill)
                    ),
                   );
                 },),
            )
          ],
        ),
      ),
    );
  }
}