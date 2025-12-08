import 'package:flutter/material.dart';
import 'package:flutter_demo/foodmodel.dart';

class Scroolable extends StatefulWidget {
  const Scroolable({super.key});

  @override
  State<Scroolable> createState() => _ScroolableState();
}

class _ScroolableState extends State<Scroolable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
         
           children: [

            TextFormField(
              style: TextStyle(color: Colors.white,fontSize: 20),
              decoration: InputDecoration(
                
                hintText: 'search bar',hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                focusColor: Colors.black87,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color:Colors.grey,width: 4),),
                    enabled: true,
                    fillColor: Colors.black,
                    filled: true,
                    prefixIcon: Icon(Icons.search)
                    
              ),
              
              
            ),
          
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width*0.46,
                    decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text(' Today\nOffers',style: TextStyle(color: Colors.black,fontSize: 30),)),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width*0.46,
                    decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('      25% \n Discount',style: TextStyle(color: Colors.black,fontSize: 30),)),
                  ),
                  
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: 
                AssetImage('assets/dinnerhalf.jpg'),fit: BoxFit.fill
                )),
              ),
              SizedBox(height: 20,),
              Text('Todays special',style: TextStyle(color: Colors.black,fontSize: 25),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('30% Off ',style: TextStyle(color: Colors.black,fontSize: 20),),
                  InkWell(child: Icon(Icons.shopping_cart_checkout,color: Colors.black,size: 50,),
                  onTap: () => Icons.ac_unit_rounded,
                  )
                ],
              ),
              Divider(
                color: Colors.black,
              ),
             
              Text('Specials',style: TextStyle(color: Colors.black,fontSize: 30),),
              ListView.builder(
                itemCount: foodData.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final data=foodData[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child:
                                 Text(data.foodName,style: TextStyle(color: Colors.black,fontSize: 18),
                                 )
                                 ),
                           
                            Center(child: 
                            Text(data.Rate,style: TextStyle(color:Colors.lime,fontSize: 18),
                            )
                            )
                               ], 
                            ),
                            Container(
                              height: 85,
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image:NetworkImage(data.image),fit: BoxFit.fill)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}