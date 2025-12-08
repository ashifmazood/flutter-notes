import 'package:flutter/material.dart';



 class ExamDetails extends StatefulWidget {
  const ExamDetails({super.key});

  @override
  State<ExamDetails> createState() => _ExamDetailsState();
}

class _ExamDetailsState extends State<ExamDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text( 'EXAM DETAILS',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight:FontWeight.w900),))
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [     
            TextFormField(decoration: InputDecoration(
            hintText: 'Room Name',
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),borderRadius: BorderRadius.circular(20)),
            enabled: true,
            fillColor: Colors.grey.shade200,
            filled: true,
            ),
            keyboardType: TextInputType.phone,
            ),
            TextFormField(decoration: InputDecoration(
              hintText: 'ROOM CAPPACITY',
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(20)),
              enabled: true,
              fillColor: Colors.grey.shade200,
              filled: true,
            ),
            keyboardType: TextInputType.phone,
            ),
            Text('Exams',style: TextStyle(color: Colors.black,fontSize: 30,),),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amberAccent),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black),
        
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Exam Name',style: TextStyle(color: Colors.black,fontSize: 30),),
                      Text('Exame date',style: TextStyle(color: Colors.black,fontSize: 30),)
                    ],
                  )
                ],
              ),
            ),
            Text('Seats',style: TextStyle(color: Colors.black,fontSize: 40),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                  ],
                ),
                SizedBox(height: 30,width: 30,),
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Container(
                height: 60,
                width:MediaQuery.of(context).size.width*0.4 ,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown),
                child: Center(child: Text('submit',style: TextStyle(color: Colors.black,fontSize: 30),)),
              ),
            ),
          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        
      },
      child: Icon(Icons.add,color: Colors.black,size: 40,), ),
    );
  }
}