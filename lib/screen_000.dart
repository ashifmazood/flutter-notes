import 'package:flutter/material.dart';

class sharedPrefnce extends StatefulWidget {
  const sharedPrefnce({super.key});

  @override
  State<sharedPrefnce> createState() => _sharedPrefnceState();
}

class _sharedPrefnceState extends State<sharedPrefnce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in',style: TextStyle(color: Colors.redAccent,fontSize: 30,fontWeight: FontWeight.w400),),

      ),
      body: Column(
        children: [
          Text('Enter your Name',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'First Name',
              labelText: 'Name',
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(10,),borderSide: BorderSide(
                color: Colors.black54,width: 2,
                
              ),
              
              ),
              enabled: true,
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(
                color: Colors.black,width: 2,
              ),
              ),
              focusColor: Colors.blue.shade300,
              fillColor: Colors.blue.shade400,
              filled: true,

            ),
            keyboardType:TextInputType.name,
          ),

          TextFormField(style: TextStyle(
            color: 
            Colors.black,fontSize: 17
          ),
            decoration: InputDecoration(
              hintText: 'Last Name ',
              labelText: 'Name',
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(10,),borderSide: BorderSide(
                color: Colors.black54,width: 2,
                
              ),
              
              ),
              enabled: true,
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(
                color: Colors.black,width: 2,
              ),
              ),
              focusColor: Colors.blue.shade300,
              fillColor: Colors.blue.shade400,
              filled: true,

            ),
            keyboardType:TextInputType.name     
          ),

          Text('Enter your Email',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),

          TextFormField(
            validator: (value) {
              if (value==null||value.isEmpty){
               return 'Email is requared'; 
              }
            },
            decoration: InputDecoration(
              hintText: 'Email',
              labelText: 'email',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(
                color: Colors.black54,width: 2)),
              enabled: true,
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.black,width: 2),
              
              ),
              focusColor: Colors.blue.shade300,
              fillColor: Colors.blue.shade400,
              filled: true
            ),
            keyboardType: TextInputType.emailAddress,
          )
          
        ],
      ),
    );
  }
}