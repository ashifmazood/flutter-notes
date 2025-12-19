import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333screen3.dart';

class Mch333profile extends StatefulWidget {
  const Mch333profile({super.key});

  @override
  State<Mch333profile> createState() => _Mch333profileState();
}

class _Mch333profileState extends State<Mch333profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:   Drawer(
                        backgroundColor: Colors.black,
                        child:ListView(
                          padding: EdgeInsets.zero,
                          children: [

                            DrawerHeader( 
                              decoration: BoxDecoration(color: Colors.cyanAccent),

                               child: Column(
                                children: [
                                  CircleAvatar(radius: 50,
                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAzBE_P3rPclK8gJnC-y1Mq7kNOvyL8yUHlg&s',scale: 25),

                                  ),
                                  SizedBox(height: 2,),
                                  Text('Welcome User',style: TextStyle(fontSize: 20),)
                                ],
                               )),
                               ListTile(
                                leading: Icon(Icons.accessibility_rounded,color: Colors.white,),
                                title: Text('Account...',style: TextStyle(color: Colors.white,fontSize: 20),),
                               ),
                               Divider(color: Colors.white,),
                          ],
                        ) ,
                      ),
                    
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_sharp,color: Colors.black,size: 30,),
          
                 // SizedBox(width: 120),
          
                  Text('Profile',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),

                  Builder(
                    builder: (context) {
                      return InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      
                      
                      child: Icon(Icons.settings,color: Colors.black,size: 30,));
                    },
                  )
                ],
              ),
              SizedBox(height: 60,),

              CircleAvatar(radius: 150,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAzBE_P3rPclK8gJnC-y1Mq7kNOvyL8yUHlg&s',scale: 100),

              ),

              SizedBox(height: 30,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: Center(child: Text('User Name',style: TextStyle(color: Colors.grey,fontSize: 20),)),
                  ),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100,
                    ),
                    child: Center(child: Icon(Icons.edit,color:Colors.grey,size: 25,)),
                  ),

                ],
                
              ),
              SizedBox(height: 50,),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Your Address',style: TextStyle(color: Colors.black,fontSize: 20),),
                        Icon(Icons.location_on_outlined,color: Colors.grey,size: 20,)
                      ],
                    ),
                  ),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Orders',style: TextStyle(color: Colors.black,fontSize: 20),),
                        Icon(Icons.delivery_dining_outlined,color:Colors.grey,size: 25,),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: () {
                    Navigator;
                  },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200,
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Favorates',style: TextStyle(color: Colors.black,fontSize:18 ),),
                          Icon(Icons.favorite,color: Colors.grey,size: 20,)
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Add cart',style: TextStyle(color: Colors.black,fontSize: 20),),
                        Icon(Icons.shopping_cart_checkout_rounded,color:Colors.grey,size: 25,),
                      ],
                    ),
                  ),
                                    Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Contact ',style: TextStyle(color: Colors.black,fontSize: 20),),
                        Icon(Icons.call,color:Colors.grey,size: 25,),
                      ],
                    ),
                  ),

                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}