import 'package:flutter/material.dart';
import 'package:flutter_demo/localdata.dart';

class Gridview2screen extends StatefulWidget {
  const Gridview2screen({super.key});

  @override
  State<Gridview2screen> createState() => _Gridview2screenState();
}

class _Gridview2screenState extends State<Gridview2screen> {
  bool isON = false;
  bool allow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Gridview',style: TextStyle(color: Colors.purpleAccent,fontSize: 40,fontWeight: FontWeight.w600),)),
        leading: CircleAvatar(radius: 15,child: Icon(Icons.person,size: 50,),),
        actions: [
          
          Switch(value: isON,
           onChanged: (value) {
            setState(() {
              isON=!isON;
              print(isON);
            });
          },),
          Icon(Icons.more_vert,size: 40,),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.purpleAccent
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey
                      ,image: DecorationImage(image: NetworkImage(allow?'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUE61AOwukTcCYFXPwiKLSy_hlaIOKEiS61g&s':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsGw8Hx4_RN_-X0aLlFIcSRnH_2MojM7ULkw&s'),fit: BoxFit.fill)
                      ),
                        
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                          
                        Text('Name',style: TextStyle(color: Colors.black,fontSize: 30)),
                       
                    
                    Text('Total post',style: TextStyle(color: Colors.black,fontSize: 30)),
                    Text('Follows',style: TextStyle(color: Colors.black,fontSize: 30)),
                    
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(width: 100,),
                        Icon(Icons.favorite,size: 40,),
                         Switch(value: allow,
                         onChanged:(value){
                        setState(() {
                          allow=!allow;
                        print(allow);
                        });
                        
                       }),
                      
                      ],
                    )
                      ],
                      )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text('Posts ', style: 
                TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600)
                ,),
                Icon(Icons.arrow_forward,color: Colors.white,size: 40,)
              ],
            ),
            isON?
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount:localData.length-5,
                
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
               
                itemBuilder: (context, index) {
                  final data = localData[index+5];
                  return Container(
                     height:150,
                     width: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                     border: Border.all( color: Colors.black,width: 10),color: Colors.pinkAccent,
                     image: DecorationImage(image: NetworkImage(data['image']),fit: BoxFit.fill)
                     ),
                     
                  );
               
                }, 
              ),
            ):SizedBox(),
            Expanded(
              child: GridView.builder( 
                itemCount: localData.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  
                ) ,
                
                itemBuilder: (context, index) {
                  final data = localData[index];
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,
                    image: DecorationImage(image: NetworkImage(isON?data['image']:''),fit: BoxFit.fill)),
                  );
                },),
            )
          ],
        ),
      ),
    );
  }
}