import 'package:flutter/material.dart';
import 'package:flutter_demo/localdatamach002.1.dart';

class MchTextScreen2 extends StatefulWidget {
  const MchTextScreen2({super.key});

  @override
  State<MchTextScreen2> createState() => _MchTextScreen2State();
}

class _MchTextScreen2State extends State<MchTextScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search ',
                hintStyle: TextStyle(color:Colors.grey.shade500),
                labelText: '                           Search Mechanic',
                labelStyle: TextStyle(color: Colors.grey.shade500),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                borderSide:BorderSide(
                  color: Colors.grey
                ) ),
                focusColor: Colors.grey,
                fillColor: Colors.grey.shade100,
                filled: true,
                suffixIcon: Icon(Icons.notifications,color: Colors.indigo,)
                
              ),
            ),
            SizedBox(height: 30,),
        
            Expanded(
              child: ListView.separated(
                itemCount: localdatamach002_1.length,
                
                physics: AlwaysScrollableScrollPhysics(),
                
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                itemBuilder:(context, index) {
                  final data =localdatamach002_1[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(image: NetworkImage(data['image']),fit: BoxFit.fill)
                            ),
                          ),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data['name'],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                              Row(
                                children: [
                                  Text(data['salary'],style: TextStyle(color: const Color.fromARGB(255, 15, 164, 20),fontSize: 20,fontWeight: FontWeight.w500)),
                                  Text('/hour',style: TextStyle(color:Colors.grey,fontSize: 14,)),
                                ],
                              ),
                      
                            ],
                          ),
                          SizedBox(width: 100,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              
                              image: DecorationImage(image: NetworkImage(data['star']))
                            ),
                          )
                        ],
                      ),
                    ),
                    
                  );
                  
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10,);
                },
                ),
            )
          ],
        ),
      ),
    );
  }
}