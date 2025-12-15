import 'package:flutter/material.dart';
import 'package:flutter_demo/localdatamach002.dart';

class Macheintext002 extends StatefulWidget {
  const Macheintext002({super.key});

  @override
  State<Macheintext002> createState() => _Macheintext002State();
}

class _Macheintext002State extends State<Macheintext002> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.black,
            image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe0q9NIUylPjkWlUqqlPSuJrPO8gD_KmFXEQ&s'),fit: BoxFit.fill)
            ),
            
          ),
          SizedBox(width: 20,)
        ],
      ),
      drawer:Drawer(
        child: ListView(
           padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Welcome User',
              style: TextStyle(color: Colors.white,fontSize: 20),
              )
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
          ],
        ),
      ) ,
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Dashboard',style: TextStyle(
                    color: Colors.white60,fontSize: 25,fontWeight: FontWeight.w900
                  ),),
                
              Text('Last Update 25 feb 2020',style: TextStyle(
                color: Colors.white60,fontSize: 11,
              ),),
              ],
              ),
            ),
        SizedBox(height:100,),
            Container(
              height: 650,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
              color: Colors.grey.shade200),
              child:
                 Padding(
                   padding: const EdgeInsets.all(45),
                   child: GridView.builder(
                    itemCount: localdatamach002.length,
                     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30 ) ,
                     itemBuilder:(context, index) {
                       final data = localdatamach002[index];
                       return 
                       
                       Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                                image: DecorationImage(image: NetworkImage(data['image']),fit: BoxFit.fill)
                              ),
                            ),
                            Text(data['data'],style: TextStyle(color: Colors.grey,fontSize: 15),)
                          ],
                        ),
                       );
                     },),
                 ),
            )
          ],
        ),
      ),
      
    );
  }
}