import 'package:flutter/material.dart';
import 'package:flutter_demo/localdataMCH.dart';
import 'package:flutter_demo/localdatamch2.dart';

class MechineTestHome extends StatefulWidget {
  const MechineTestHome({super.key});

  @override
  State<MechineTestHome> createState() => _MechineTestHomeState();
}

class _MechineTestHomeState extends State<MechineTestHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu',style:TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600) ,),
        actions: [
          CircleAvatar(radius: 25,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSqh56wRtdilDZoHDb7CPlxH9pSmar_cd3ew&s',),),
        ],
      ),
      bottomNavigationBar: 
      BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black54,
        items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home,size: 30,),label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,size: 30,),label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined,size: 30,),label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined,size: 30,),label: "adde")
      ]
      ),
      body:
    
      Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'search for anything',labelStyle: TextStyle(color: Colors.grey),
                hintText: 'search',hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(20)),
                enabled: true,
                focusColor: Colors.grey,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)
                ),
                fillColor: Colors.white,
                filled: true,
               prefixIcon: Icon(Icons.search,color: Colors.grey,)
               
              ),),
              SizedBox(height: 15,),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  itemCount: localdatamch.length,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) {
                    final data = localdatamch[index];
                    return 
                    Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white,
                          image: DecorationImage(image: NetworkImage(data['image']))
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 70,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: Text(data['data'],style: TextStyle(color: Colors.grey,fontSize: 18),)),
                        )
                      ],
                    );
                  
                  
                  },
                  separatorBuilder: (context, index) {
                   return SizedBox(width: 10,);
                  },
                  ),
              ),
              SizedBox(height: 15,),
              Text('Friday Offer',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
              Container(
                height: 200,
                child: Stack(
                  children: [ Center(
                    child: Container(
                       height: 160,
                       width: double.infinity,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
 Colors.red,
 Colors.red,
 Colors.white
                      ])
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 20,),
                               
                               Text('Get',style: TextStyle(color: Colors.white,fontSize: 20),),
                               Text('FREE COOKE',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                               Text('On every burgur',style: TextStyle(color: Colors.white))
                             ],
                            ),
                            
                          ],
                        ),
                      ),
                     ),
                  ),
                  Positioned(
                    right: -80,
                    top: -10,
                    height: 210,
                    child: Image.asset('colaBottil.png')),
                    Positioned(
                    right: 0,
                    bottom:10,
                    height: 100,
                    child: Image.asset('burggur.png'))
                  ]
                ),
              ),
              SizedBox(height: 20,),
              Text("Today's Deal",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
              SizedBox(height: 15,),
              Expanded(
                child: GridView.builder(
                  itemCount: localdatamch2.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 60,
                  crossAxisSpacing: 30), 
                itemBuilder: (context, index) {
                  final data = localdatamch2[index];
                  return Stack(
                     children: [Container(
                      height: 250,
                      width: 180,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Center(
                            child: Container(
                              height: 120,
                              width: 120,
                             decoration: BoxDecoration( color: Colors.grey.shade200,
                             image: DecorationImage(image: NetworkImage(data['image']))
                             )
                            ),
                          ),
                            Text(data['data'],style: TextStyle(color: Colors.blueGrey,fontSize: 15),),
                            Text(data['rate'],style: TextStyle(color: const Color.fromARGB(255, 136, 153, 13),fontSize: 20
                            ,fontWeight: FontWeight.w600
                            ),
                            
                            )
                        ],
                      ),
                    ), Positioned(
                      bottom: 5,
                      right: 8,
                      child: CircleAvatar(radius: 13,backgroundColor: const Color.fromARGB(255, 9, 197, 15),
                      child:Center(child: Icon(Icons.add,color: Colors.white,weight: 30,)) ,))
                     
                     ]
                  );
                },),
              )
          ],
        ),
      ),
      
    );
  }
}