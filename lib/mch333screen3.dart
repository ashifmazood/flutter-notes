import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333_data_passing.dart';
import 'package:flutter_demo/mch333model.dart';

class Mch333screen3 extends StatefulWidget {
  const Mch333screen3({super.key});

  @override
  State<Mch333screen3> createState() => _Mch333screen3State();
}

class _Mch333screen3State extends State<Mch333screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(width: 130,),
              Center(
                child: Text('Your Favorates',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,fontWeight: FontWeight.w600
                ),),
              )
            ],
          ),
          SizedBox(height: 30,),
          Expanded(
            child: ListView.separated(
                          itemCount: mch33data.length,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder:(context, index) {
                            final data=mch33data[index];
                            return Stack(
                              children: [InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Mch333DataPassing(food: data),));
                                },
                                child: Container(
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
                                              Text(data.price.toString(),style: TextStyle(color: Colors.grey,fontSize: 15),)
                                            ],
                                          ),
                                        ],
                                      ),
                                  
                                      
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 3,
                                bottom: 1,
                                
                                child: 
                              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.favorite,color: const Color.fromARGB(255, 193, 17, 4),),
                                        SizedBox(height: 30,),
                                        Text(data.price.toString(),style: TextStyle(
                                          color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700
                                        ),)
                                      ],
                                    ))
                              ]
                            );
                          }, 
                         separatorBuilder: (context, index) {
                          return
                           SizedBox(height: 15,);
                         },),
          )
        ],
       ),
     ),
    );
  }
}