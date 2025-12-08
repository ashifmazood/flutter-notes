import 'package:flutter/material.dart';

class Accetimage extends StatelessWidget {
  const Accetimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Center(child: Text('ASSET',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight:FontWeight.w600),)),
        backgroundColor:Colors.lightGreenAccent,
        leading: 
        CircleAvatar(radius: 15,backgroundColor: Colors.grey,
        child: Icon(Icons.person,color: Colors.black,size: 45,weight: 100,)
        ),
        actions: [
          Icon(Icons.more_vert_outlined,color: Colors.black,size: 50,weight: 100,)
        ],
      ),
      body: 
       Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        image:DecorationImage(image: AssetImage("assets/butterfly.jpg",),fit: BoxFit.fill)
                         
                        ),
                        // child: Image.asset(',fit: BoxFit.fill,),
                      ),
                      Column(
                        children: [
                          Text('Butterfy',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
                          Text('for more',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
                          CircleAvatar(radius: 25,
                         child:  Icon(Icons.more_vert,color: Colors.black,size: 40,)
                          ),
                        ],
                      )
                    ],
                  ),
                  
                ),
              ),
              SizedBox(height: 50,),
              Text('beutifull butterfly',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white
                    ,image: DecorationImage(image: NetworkImage('https://c02.purpledshub.com/uploads/sites/40/2023/08/JI230816Cosmos220-6d9254f-edited-scaled.jpg'),fit: BoxFit.fill,),
                    )
                    ),
                  
                    
                    
                  
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('assets/david-clode-Oq9JrJb6K7M-unsplash.jpg'),fit: BoxFit.fill,)
                    ),
                    
                  )
                ],
              ),
              SizedBox(height: 50,),
              Container(
                    height: 60,
                    width: 380,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(onTap: () {
                            Navigator.pop(context);
                          },
                             child: Icon(Icons.back_hand,color: Colors.black,size: 30,)
                              
                            
                          ,),
                          CircleAvatar(radius: 25,
                          child: 
                              Icon(Icons.person,color:Colors.redAccent,size: 40,weight: 100,),
                            
                          ),
                          CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.home,color: Colors.redAccent,size: 40,weight: 100,),
                          ),
                          CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.apple,color: Colors.redAccent,size: 40,weight: 100,),
                          ),
                          CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.share,color: Colors.redAccent,size: 40,weight: 100,),
                          )
                        ],
                      ),
                    ),
           
              ),
              SizedBox(height: 60,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                    image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1600703136783-bdb5ea365239?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pcXVlJTIwZmxvd2VyfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000'),fit: BoxFit.fill,),
                    ),
                   
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.white,
                      image: DecorationImage(image: NetworkImage('https://images.contentstack.io/v3/assets/bltcedd8dbd5891265b/bltb0fc8c3edd349106/6668df63a62e8d63e6e051b2/beautiful-flowers-dahlia.jpg?q=70&width=3840&auto=webp'),fit: BoxFit.fill,),
                    ),
                    
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
                    image: DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/morning-glories-65bd6dcc15366.jpg?crop=0.669xw:1.00xh;0.138xw,0'),fit: BoxFit.fill,),
                    ),
                    
                  )
                ],
              ),
             
            ],
                 ),
         ),
       ),
       
      
    );
  }
}