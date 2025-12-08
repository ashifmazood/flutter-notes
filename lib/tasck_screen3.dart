import 'package:flutter/material.dart';

class EmailScreen2 extends StatefulWidget {
  const EmailScreen2({super.key});

  @override
  State<EmailScreen2> createState() => _EmailScreen2State();
}

class _EmailScreen2State extends State<EmailScreen2> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  String?selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: 
         Form(
          key: _formKey,
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             
               Center(
                 child: Text('Login',style:TextStyle(
                  fontSize: 50,fontWeight: FontWeight.w700
                 ),),
                 
               ),
               SizedBox(height: 50,),
               Text('Email',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,),
                TextFormField(
                  controller: _emailController,
                  decoration:const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Please enter your email';
                    }
                    if ( !value.contains('@') || !value.contains('.')){
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,

                ),
                 SizedBox(height: 50,),
                Text('Password', style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700),),
                TextFormField(
                  decoration:InputDecoration(
                    labelText: 'Enter ytour password',
                    border: OutlineInputBorder()
                  ) ,
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'please Enter your password';
                    }
                    if(value.length<8 ){
                      return 'Enter a valid password';
                    }
                    return null;
                  },
                  keyboardType:  TextInputType.visiblePassword,
                  ),
                   SizedBox(height: 50,),
                  Text('Role',style: TextStyle(color: Colors.black,fontSize: 30,
                  fontWeight: FontWeight.w600
                  ),),
                  
                  DropdownButtonFormField<String>(
                    validator: (value) {
                      if(value == null||value.isEmpty){
                        return 'please select a role';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        gapPadding: 5
                      )
                    ),
                    isExpanded: true,
                    hint: Text('          Select your Role',style: TextStyle(fontSize: 18),),
                    value: selectedValue,
                    iconEnabledColor: Colors.black,
                  
                    items: [
                      DropdownMenuItem(value: 'User',child:Text('User',style: TextStyle(fontSize: 30),)),
                      DropdownMenuItem(value: 'Admin',child:Text('Admin',style: TextStyle(fontSize: 30),)),
                      DropdownMenuItem(value: 'Guest',child:Text('Guest',style: TextStyle(fontSize: 30),)),
                      DropdownMenuItem(value: 'Visitor',child:Text('Visitor',style: TextStyle(fontSize: 30),)),
                    ], 
                    onChanged: (value) {
                      setState(() {
                        selectedValue=value;
                      });
                    },),
                    SizedBox(height: 200,),

                    Center(
                      child: ElevatedButton(onPressed: () {
                        if(_formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('email is valid \n passwor is valid'))
                          );
                          
                        }
                      
                      }, child: const Text('LOGIN',style: TextStyle(fontSize: 30),)),
                    )
             ],
           ),
         ),
       ),
       
       
    );
  }
}