import 'package:flutter/material.dart';

class Task8 extends StatelessWidget {
  const Task8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('ROW',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.w900),)),
        leading: Icon(Icons.menu,color: Colors.blueGrey,size: 40,weight: 100,),
        actions: [
          CircleAvatar(radius: 20,backgroundColor: Colors.black,
          child: 
          Icon(Icons.person,color:  Colors.white,size: 40,weight: 100,),),
          Icon(Icons. more_vert,color: Colors.blueGrey,size: 40,weight: 100,)
        ],
      ),
      body: 
       SingleChildScrollView(
         child: Center(
           child: Column(
            children: [SizedBox(height: 70,),
              Container(
                height: 250,
                width: 380,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                
                child:Row(
                  children: [SizedBox(width: 10,),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.cyanAccent,
                        
                      ),
                      child: Image.network('https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
                      fit: BoxFit.cover,),
                    ),SizedBox(width: 30,),
                     Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('TEXT',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w600),),
                          CircleAvatar(radius:30 ,backgroundColor: Colors.white,
                          child: 
                          Icon(Icons.star_border_outlined,color: Colors.black,size: 60,weight: 100,),),
                          Text('TEXT',style: TextStyle(
                            color: Colors.white,fontSize: 50,fontWeight: FontWeight.w600
                          ),)
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 250,
                width:380 ,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey),
                child: Row(
                  children: [SizedBox(width: 10,),
                    CircleAvatar(radius: 100,
                    backgroundImage: NetworkImage('https://wallpapers.com/images/high/black-bm4-gt4-iphone-car-fr51nwn8w2q1ntcs.jpg',scale: 100),),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('TWO',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w600),),
                        Text('FOUR',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w600),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 170,),
              Container(
                height: 40,
                width: 390,
                decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home,color: Colors.black,size: 40,weight: 60,),
                    Icon(Icons.search,color: Colors.black,size: 40,weight: 60,),
                    Icon(Icons.add,color: Colors.black,size:40 ,weight:900 ,),
                    Icon(Icons.help,color: Colors.black,size: 40,weight: 60,)
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(color: Colors.amberAccent),
              )
              
            ],
                 ),
         ),
       ),
    );
  }
}