import 'package:flutter/material.dart';
import 'package:flutter_demo/task12screan.dart';
import 'package:flutter_demo/task6.dart';

class Foodscreen extends StatefulWidget {
  const Foodscreen({super.key});

  @override
  State<Foodscreen> createState() => _FoodscreenState();
}

class _FoodscreenState extends State<Foodscreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 40,color: Colors.grey,),
        actions: [
          CircleAvatar(radius: 20,backgroundColor: Colors.grey,
          child: Icon(Icons.person,color: Colors.white,size: 30,),),
          Icon(Icons.notifications,color: Colors.grey,size: 40,)
        ],
      ),
      body:
       SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               
              Text('Good Morning , Prabal',style: TextStyle(color: Colors.grey,fontSize: 30),textAlign: TextAlign.start,),
              TextFormField(decoration: InputDecoration(
                hintText: 'search for your favourite, food',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)
                
                ),
                enabled: true,
                focusColor: Colors.grey,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey
                  )
                  
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.search,color: Colors.grey,),
                suffixIcon: Icon(Icons.mic,color: Colors.grey,)
              ),),
              SizedBox(height: 50,),
          
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Get up to\n20% off on\nAll food Orders',style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600
                          ),),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                            child: Center(child: Text('Order now',
                            style: TextStyle(
                              color: Colors.orange,fontSize: 25,fontWeight: FontWeight.w700),
                              )
                              ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent,
                      image: DecorationImage(image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/052/645/314/small/a-hand-holding-a-three-scoop-ice-cream-cone-isolated-transparent-png.png'),fit: BoxFit.fill),)
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                  Text('see all',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),)
                ],
              ),
              Row(mainAxisAlignment:MainAxisAlignment.spaceAround ,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.teal,
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf7zvuz1jw97PPUGB5aK40TF6pznqlY4ihMg&s'),fit: BoxFit.fill)),
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade100
                          ),
                          child: Center(child: Text('Breakfast',
                          style: TextStyle(
                            color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w100),)),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.tealAccent,
                          image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2F7IGmUnqVUnCykvBMlocbMrFI6hVaOMNpg&s'),fit: BoxFit.fill)
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade100,
                            
                          ),
                          child: Center(child: Text('Lunch',style: TextStyle(
                            color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w100),)),
                        ),
                      )
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 150,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                          color: Colors.lime,
                          image: DecorationImage(image: AssetImage('assets/dinner.jpg'),fit: BoxFit.fill)
                          ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          color: Colors.grey.shade100,
                        ),
                        child: Center(child: Text('Din',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w100),)),
                      )
                    ],
                  )
                ],
              ),
              Text('New Launch',style: TextStyle(
                color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900,
              ),),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15)
                   ),
                   color: Colors.greenAccent,
                   image: DecorationImage(image: AssetImage('assets/dinnerhalf.jpg'),fit: BoxFit.fill)
                   ),
              ),
              // Container(
              //   height: 80,
              //   width:double.infinity,
              //   color: Colors.white,
              //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Icon(Icons.home_outlined,color: Colors.orange,size: 40,weight: 100,),
              //           Text('Home',style: TextStyle(color: Colors.orange,fontSize: 18,fontWeight: FontWeight.w600),)
              //         ],
              //       ),
              //       Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Icon(Icons.search,color: Colors.grey,size: 40,weight: 100,),
              //           Text('Search',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),)
              //         ],
              //       ),
              //       Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Icon(Icons.favorite_border,color: Colors.grey,size: 40,weight: 100,),
              //           Text('Favorite',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),)
              //         ],
              //       ),
              //       Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Icon(Icons.shopping_cart_outlined,color: Colors.grey,size: 40,weight: 100,),
              //           Text('Cart',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),)
              //         ],
              //       ),
              //       Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Icon(Icons.person_2_outlined,color: Colors.grey,size: 40,weight: 100,),
              //           Text('profile',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),)
              //         ],
              //       ),
                     
              //     ],
              //   ),
              // ),
              InkWell(onTap: () {
                Navigator.pop(context);
                
              },
              child: Icon(Icons.flip_to_back,color: Colors.black,size:42 ,),
              ),
              
            ],
          ),
        
        ),
        
      ),
    
    );
  }
}