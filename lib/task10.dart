import 'package:flutter/material.dart';

class Task10 extends StatelessWidget {
  const Task10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                  ),
                  color: Colors.grey
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('User_Name',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w600),),
                            CircleAvatar(radius: 20,backgroundColor: Colors.white,
                            child: Icon(Icons.person,size: 30,color: Colors.black,weight:100,),
                            )
                          ],
                        ),
                        Text('Welcome back',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w600),),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              
                              height: 50,
                              width:MediaQuery.of(context).size.width*0.8 ,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.search,size: 40,color: Colors.black,weight: 100,),
                                  Text('search here',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                              child: Icon(Icons.menu,color: Colors.black,size: 40,weight: 100,),
                              
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey,
                        
                        ),   
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Text('Date now',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
                             Text('8/7/25',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
                          ],
                        ),       
                      ),
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey,
                        
                        ),
                        child: 
                        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('No of',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w600),),
                            Text('data',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue,
                          image: DecorationImage(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/9203/9203764.png'),fit: BoxFit.fill)
                        ),
                  
                        ),
                        Column(
                          children: [
                            Text('Name',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:FontWeight.w600 ),),
                            Text('Roll no',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
                            Text('Streme',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.white,
                      
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.lightBlue,borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/9203/9203764.png'),fit: BoxFit.fill)
                          ),
                          
                        ),
                        Column(
                          children: [
                            Text('Name',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:FontWeight.w600 ),),
                            Text('Roll no',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
                            Text('Streme',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
                          
                      ],
                    ),
                      ]
                     ),
                    ),
                    Row(
                      children: [
                        Text('Couses',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    
                     Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                            image: DecorationImage(image:NetworkImage('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png'),fit: BoxFit.fill )
                            ),
                           ),
                            Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                            image: DecorationImage(image: NetworkImage('https://markovate.com/wp-content/uploads/2022/08/top-MERN-Stack.webp'),fit: BoxFit.fill)
                            ),
                           ),
                            Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkdgUkYVq9-UPHtkrQyNzA1t-hCdSG65-XYw&s'),fit: BoxFit.fill)
                            ),
                           ),
                            Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                            image: DecorationImage(image: NetworkImage('https://s3-alpha.figma.com/hub/file/2811018019/cae7d25d-8aff-4c49-8189-fad585dfb7cb-cover.png'),fit: BoxFit.fill)
                            ),
                           ),
                          ],
                        ),
                      ),
                    
          ],
        ),
      ),
    );
  }
}