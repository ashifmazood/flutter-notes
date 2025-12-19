import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333_data_passing.dart';
import 'package:flutter_demo/mch333model.dart';

class Mch333screen2 extends StatefulWidget {
  const Mch333screen2({super.key});

  @override
  State<Mch333screen2> createState() => _Mch333screen2State();
}

class _Mch333screen2State extends State<Mch333screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:50 ,),
              Row(
                        children: [
                         Container(
                          height: 60 ,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amberAccent,
                          ),
                          child: Icon(Icons.location_on_outlined,color: Colors.red,size: 35,),
                          ),
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Deliver to',style: TextStyle(
                                color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500
                              ),),
                              Text('Your Address',style: TextStyle(
                                color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600
                              ),)
                            ],
                          ),
                          SizedBox(width: 10,),
                  
                          Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 30,),
                          SizedBox(width: 60,),
                          Icon(Icons.notifications_none,color: Colors.black,size: 40,),
                          CircleAvatar(radius: 25,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAzBE_P3rPclK8gJnC-y1Mq7kNOvyL8yUHlg&s'),)
                        ],
                      ),
                       SizedBox(height: 20,),
                           TextFormField(
                          
                      decoration: InputDecoration(
                        hintText: 'What makes you to eat ',
                        hintStyle: TextStyle(color:Colors.grey.shade500),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide:BorderSide(
                          color: Colors.grey
                        ) ),
                        focusColor: Colors.grey,
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        prefixIcon: Icon(Icons.search,color: Colors.grey,)
                        
                      ),
                      cursorWidth: 0.7,
                       ),
                       SizedBox(height: 20,),
                       Text('Popular Pastries',style: TextStyle(
                        color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                       ),),
                       SizedBox(height: 10,),
                       SizedBox(
                        height: 270,
                         child: ListView.separated(
                          physics: AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: mch33data.length,
                          itemBuilder: (context, index) {
                            final data =mch33data[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Mch333DataPassing(food: data),));
                              },
                              child: Stack(
                                children: [Container(
                                 height:300,
                                 width: 270,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                 ),
                                 child: Column(
                                  children: [
                                    Container(
                                      height: 190,
                                      width: 270,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blueGrey,
                                        image: DecorationImage(image: NetworkImage(data.image.toString()),fit: BoxFit.fill)
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(data.fullname.toString(),style: TextStyle(
                                          color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600
                                        ),),
                                        Text(data.price.toString(),style: TextStyle(
                                          color: Colors.black,fontWeight: FontWeight.w600
                                        ),)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                
                                    Row(
                                      children: [
                                        Icon(Icons.star_border,color: Colors.lightGreenAccent,size: 20,),
                                        Text('4.5',style: TextStyle(
                                          color: Colors.grey,fontSize: 15
                                        ),)
                                      ],
                                    )
                                  ],
                                 ),
                                ),
                                 Positioned(
                        top: 5,
                        left: 5,
                        child: Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade100
                          ),
                          child: Center(child: Text(data.name.toString())),
                        ))
                                ]
                              ),
                            );
                          }, 
                          
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 20,);
                          }, 
                          ),
                       ),
                       SizedBox(height: 30,),

                       Text('Explore Menu',style: TextStyle(
                        color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700
                       ),),
                       SizedBox(height: 20,),

                       ListView.separated(
                        itemCount: mch33data.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder:(context, index) {
                          final data =mch33data[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => Mch333DataPassing(food:data),));
                            },
                            child: Stack(
                              children: [ Container(
                                height: 90,
                                width: MediaQuery.of(context).size.width*0.99,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                                     
                                ),
                                child: Row(
                                  children: [
                              
                                    Container(
                                      height: 80,
                                      width: 80,            
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey,
                                        image: DecorationImage(image:NetworkImage(data.image.toString()),fit: BoxFit.fill)
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Row(
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 5,),
                                            Text(data.fullname.toString(),style: TextStyle(
                                              color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600
                                            ),),
                                            Text('Popular item',style: TextStyle(color: Colors.grey,fontSize: 15),),
                                            Row(
                                              children: [
                                                Icon(Icons.star_border,color: Colors.lightGreenAccent,size: 20,),
                                                Text(data.ratting.toString(),style: TextStyle(color: Colors.grey,fontSize: 15),)
                                              ],
                                            ),
                                          ],
                                        ),                                    
                                     ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                
                                right: 1,
                                bottom: 1,
                                
                                child:
                              
                                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        
                                          children: [
                                            Icon(Icons.favorite,color: const Color.fromARGB(255, 193, 17, 4),),
                                            SizedBox(height: 30,),
                                            Text(data.price.toString(),style: TextStyle(
                                              color: Colors.black,fontSize: 15,fontWeight: FontWeight.w700
                                            ),)
                                          ],
                                        ), )
                              ],
                            ),
                          );
                        }, 
                       separatorBuilder: (context, index) {
                        return
                         SizedBox(height: 15,);
                       },)
            ],
          ),
        ),
      ),
    );
  }
}