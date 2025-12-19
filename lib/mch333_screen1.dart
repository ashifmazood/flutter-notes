import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333_data_passing.dart';
import 'package:flutter_demo/mch333model.dart';

class Mch333screen1 extends StatefulWidget {
  const Mch333screen1({super.key});

  @override
  State<Mch333screen1> createState() => _Mch333screen1State();
}

class _Mch333screen1State extends State<Mch333screen1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
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
          
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width*0.99,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 193, 17, 4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('What can we bake fresh\n        for you today?',style: TextStyle(
                        color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500
                      ),),
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
          
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
          
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today's Specials",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,fontWeight: FontWeight.w900
                  ),),
                  Text('Show All',style: TextStyle(
                    color: Colors.grey,fontSize: 15
                  ),)
                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                height: 140,
                child: ListView.separated(
                  itemCount: mch33data.length,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data =mch33data[index];
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mch333DataPassing(food: data),));
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(data.image.toString(),scale: 30),),
                        ),
                          SizedBox(height: 5,),
                          Center(child: Text(data.name.toString(),style: TextStyle(color: Colors.grey,fontSize: 15),))
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  ),
              ),
              SizedBox(height: 0,),
          
              Text('Popular',style: TextStyle(
                color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
              ),),
              SizedBox(height: 25,),
          
              SizedBox(
                height: 230,
                child: ListView.separated(
                  itemCount: mch33data.length,
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data=mch33data[index];
                   return
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Stack(
                         children: [ InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mch333DataPassing(food: data),));
                          },
                           child: Container(
                            height: 200,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.yellow,
                              image: DecorationImage(image: NetworkImage(data.image.toString()),fit: BoxFit.fill)
                            ),
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
                         ],
                       ),
                      SizedBox(height: 6,),
                      Text(data.fullname.toString(),style: TextStyle(
                        color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.w700
                      ),),

                     ],
                   );
                     },
                     separatorBuilder: (context, index) {
                       return SizedBox(width: 30,);
                     },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}