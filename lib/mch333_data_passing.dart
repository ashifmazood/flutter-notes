import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333model.dart';

class Mch333DataPassing extends StatefulWidget {
 final Mch333model food;
  const Mch333DataPassing({super.key, required this.food});

  @override
  State<Mch333DataPassing> createState() => _Mch333DataPassingState();
}

class _Mch333DataPassingState extends State<Mch333DataPassing> {
  int count  = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,color: Colors.black,size: 20,)),
                  SizedBox(width: 130,),
                  Text('Menu Details',style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,fontWeight: FontWeight.w600
                  ),),
                  SizedBox(width: 100,),
                  Icon(Icons.favorite,color: const Color.fromARGB(255, 193, 17, 4),),
                ],
              ),
              SizedBox(height: 20,),
          
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width*0.99,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                  image: DecorationImage(image: NetworkImage(widget.food.image.toString()),fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 20,),
          
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.food.fullname.toString(),style: TextStyle(
                    color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700
                  ),),
                  Text(widget.food.price.toString(),style: TextStyle(
                    color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600
                  ),)
                ],
              ),
              SizedBox(height: 30,),
              Text(widget.food.discrib.toString(),
              style: TextStyle(
                color: Colors.grey,fontSize: 15
              ),),
              SizedBox(height: 30,),
          
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Quantity',style: TextStyle(
                        color: Colors.grey,fontSize: 18,
                      ),),
                   SizedBox(height: 20,),
                
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Icon(Icons.add,color: Colors.grey,size: 25,)),
                    SizedBox(width: 10,),
                  Text(count.toString(),style: TextStyle(fontSize: 18),),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if(count>0){
                         count--;
                        }
                       
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Icon(Icons.minimize_sharp,color: Colors.grey,size: 25,),
                    ))
                ],
              ),
               ],
                  ),
            
          Column(
            children: [
              Text('Ratting',style:TextStyle(color: Colors.grey,fontSize: 15),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.limeAccent,size: 20,),
                  Text(widget.food.ratting.toString(),style: TextStyle(color: Colors.black,fontSize: 16),)
                ],
              )
            ],
          )
          ],
              ),
              SizedBox(height: 25,),
          
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recomented for you',style: TextStyle(
                    color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600
                  ),),
                  Text('viwe All',style: TextStyle(
                    color: Colors.yellow,fontSize: 17
                  ),)
                ],
              ),
              SizedBox(height: 30,),
          
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(widget.food.price.toString(),style: TextStyle(
                        color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600
                      ),),
                      Text('product price',style: TextStyle(color: Colors.grey,
                      fontSize: 16,
                      ),)
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:const Color.fromARGB(255, 193, 17, 4),
                    ),
                    child: Center(
                      child: Text('Proceed',style: TextStyle(
                        color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
                      ),),
                    ),
                  )
                ],
          
              
              )
              ],
          
              
            
          ),
        ),
      ),
    );
  }
}