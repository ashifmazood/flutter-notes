import 'package:flutter/material.dart';

class Task11 extends StatelessWidget {
  const Task11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 80,
              child: Image.network('https://cdn-icons-png.flaticon.com/512/9203/9203764.png',fit: BoxFit.fill,)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange),
                    child: Center(child: Text('Name',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)),
                    
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.15,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange),
                    child: Icon(Icons.menu,color: Colors.black,size: 30,weight: 100,),
                  )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.20,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      color:Colors.deepOrange
                        ),
                        child: CircleAvatar(radius: 3,child: 
                        Icon(Icons.person,color: Colors.black,size: 30,weight: 100,)
                  )
                  ),
                  Container(
                    height: 50,
                    width:MediaQuery.of(context).size.width*0.20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange),
                    child: Icon(Icons.menu,color: Colors.black,size: 30,weight: 100,)
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange),
                    child: Center(child: Text('Class',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('MEDIA QUARY',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600,),))
                    ),
                  ),
                ],
              ),
               Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('SAFE AREA',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600,),))
                    ),
                  ),
                ],
              ),
               Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('SIZED BOX',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600,),))
                    ),
                  ),
                ],
              )
            
          ],
        ),
      ),
    );
  }
}