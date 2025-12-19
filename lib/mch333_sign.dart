import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333_bottomnavigation.dart';
//import 'package:flutter_demo/mch333_screen1.dart';

class Mch333Sign extends StatefulWidget {
  const Mch333Sign({super.key});

  @override
  State<Mch333Sign> createState() => _Mch333SignState();
}

class _Mch333SignState extends State<Mch333Sign> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        Form(
        key:_formKey,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,size: 30,color: Colors.black,)),
              SizedBox(height: 150,),
          
              Text('Welcome Back!',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
          
              Text('Lorem ipsum dolor sit\namet con...',style: TextStyle(
                color: Colors.grey,fontSize: 16
              ),),
              SizedBox(height: 50,),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    //borderSide: BorderSide(
                    //   color: Colors.grey,width: 1,
                      
                    // )
                  ),
                  prefixIcon: Icon(Icons.mail_outline),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 1)
                  )
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
                keyboardType: TextInputType.name,
                
              ),
              SizedBox(height: 30,),
               TextFormField(
                decoration: InputDecoration(
                  hintText: 'Conform your password',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    //borderSide: BorderSide(
                    //   color: Colors.grey,width: 1,
                      
                    // )
                  ),
                  prefixIcon: Icon(Icons.security),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 1)
                  )
                ),
                 validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'please Enter your password';
                      }
                      if(value.length<8 ){
                        return 'Enter a valid password';
                      }
                      return null;
                    },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: () { setState(() {
                  if(_formKey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mch33BNB(),));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('email is valid \n passwor is valid'))
                            );
                            
                          }
                });
                  
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width*0.99,
                  decoration: BoxDecoration(
                    color:  const Color.fromARGB(255, 193, 17, 4),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(
                      color: Colors.white,fontSize: 20
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 30,),
          
              Center(
                child: Text('Dont have an acount Sign up\n           forgot password',style: TextStyle(
                  color: Colors.grey,fontSize: 16
                ),),
              )
          
            ],
          ),
        ),
        )
      ),
    );
  }
}