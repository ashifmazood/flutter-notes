import 'package:flutter/material.dart';
import 'package:flutter_demo/task12screen2.dart';
import 'package:flutter_demo/task6.dart';
import 'package:flutter_demo/textFormField.dart';

class Screen12 extends StatelessWidget {
  const Screen12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Center(child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.w600),)),
            SizedBox(height: 50,),
             Text('Email',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.left,),
             TextFormField(
              decoration:InputDecoration(
                hintText: 'enter yuor email',
                labelText: 'email',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                enabled: true,
                focusColor: Colors.red,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown,width: 3),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.mail)
                ) ,
                keyboardType: TextInputType.emailAddress,
                
        
             ),
             SizedBox(height: 80,),
            Text('phone',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.left,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'enter your phone number',
              labelText: 'phone no:',
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
              
              ),
              enabled: true,
              focusColor: Colors.red,
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.brown,width: 3)),
              fillColor: Colors.grey.shade200,
              filled: true,
              suffixIcon: InkWell
              
              (child: Icon(Icons.remove_red_eye))
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 80,),
            Text('password',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.left,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'enter a password',
                labelText: 'password',
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                ),
                enabled: true,
                focusColor: Colors.red,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.brown,width: 3),),
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.call)
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            SizedBox(height: 80,),
            Center(
              child: InkWell( onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ( context) => Screen2(),) );
              },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}