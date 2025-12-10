
import 'dart:developer';

import 'package:flutter/material.dart';

class TextformfieldScreen extends StatefulWidget {
  const TextformfieldScreen({super.key});

  @override
  State<TextformfieldScreen> createState() => _TextformfieldScreenState();
}

class _TextformfieldScreenState extends State<TextformfieldScreen> {
  TextEditingController email =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Login',style: TextStyle(color: Colors.grey,fontSize: 40,fontWeight: FontWeight.w900),)),
        leading: CircleAvatar(radius: 3,backgroundColor: Colors.grey,),
        actions: [
          Icon(Icons.menu,color: Colors.grey,size: 40,weight: 100,)
          
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Welcome \nBack ',style: TextStyle(color: Colors.blue,fontSize: 50,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
            Row(
              children: [
                Text('Name',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w100),)
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'enter your name',
                labelText: "name",
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                enabled: true,
                focusColor: Colors.brown,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown,width: 3)
                ),
                fillColor: Colors.blueGrey.shade200,
                filled: true,
              ),
              keyboardType: TextInputType.name,
            ),
            Row(
              children: [
                Text('Email',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w100),)
              ],
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    
              },
              controller: email,
              decoration: InputDecoration(
                hintText: "enter email",
                labelText: "email",
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                enabled: true,
                focusColor: const Color.fromARGB(255, 255, 17, 0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown,width: 3)
                ),
                fillColor: Colors.blueGrey.shade200,
                filled: true
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          Row(
            children: [
              Text('Password',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w100),)
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'enter your password',
              labelText: 'password',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black), 
              ),
              enabled: true,
              focusColor: Colors.red,
              
              
              
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.brown,width: 3),
              ),
                fillColor: Colors.blueGrey.shade200,
              filled: true,
              suffixIcon: Icon(Icons.remove_red_eye),
              prefixIcon: Icon(Icons.abc)
            ),
            keyboardType: TextInputType.phone,
            obscureText: true,
          ),
            Center(
              child: InkWell(
                onTap: () {
                (email.text);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                  child: Center(child: Text('Login',style: TextStyle(color: Colors.black,fontSize:30 ,fontWeight: FontWeight.w600),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
} 