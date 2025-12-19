import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333_bottomnavigation.dart';
//import 'package:flutter_demo/mch333_screen1.dart';

class Mch333Reg extends StatefulWidget {
  const Mch333Reg({super.key});

  @override
  State<Mch333Reg> createState() => _Mch333RegState();
}

class _Mch333RegState extends State<Mch333Reg> {
   final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        Form(
          key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Colors.black,size: 30,),),
              SizedBox(height: 25,),
            Text('Register',style: TextStyle(
              color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600
            ),),
         SizedBox(height: 50,),
            TextFormField(
              
              decoration: InputDecoration(
                
                hintText: 'Enter your full name',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),borderSide: BorderSide(
                    color: Colors.grey,width: 1,
                    
                  )
                ),
                prefixIcon: Icon(Icons.person_2_outlined),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,width: 1)
                )
              ),
               validator: (value) {
                    if (value == null || value.isEmpty){
                      return 'please Enter your name';
                    }
                    if(value.length<4){
                      return 'Enter a valid user name';
                    }
                    return null;
                  },
              keyboardType: TextInputType.name,
              
            ),
            SizedBox(height: 25,),
             TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                  //,borderSide: BorderSide(
                  //   color: Colors.grey,width: 1,
                    
                  //)
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
            SizedBox(height: 25,),
             TextFormField(
              decoration: InputDecoration(
                hintText: 'Create a password(8 digits)',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),borderSide: BorderSide(
                    color: Colors.grey,width: 1,
                    
                  )
                ),
                prefixIcon: Icon(Icons.security_sharp),
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
            SizedBox(height: 25,),
             TextFormField(
              decoration: InputDecoration(
                hintText: 'Conform your password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),borderSide: BorderSide(
                    color: Colors.grey,width: 1,
                    
                  )
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
              onTap: () {
                setState(() {
                   if(_formKey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Mch33BNB(),));
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
               SizedBox(height: 20,),
            Text('              ----------------    or    ----------------',style: TextStyle(
              color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600
            ),),
            SizedBox(height:15 ,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:20 ,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBOxFuTWkNpYq17xxlRrnqqjdZ_b3B6NX-iQ&s'),fit: BoxFit.contain )
                  ),
                ),
                 
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image:NetworkImage('https://static.vecteezy.com/system/resources/previews/018/930/476/non_2x/facebook-logo-facebook-icon-transparent-free-png.png'),fit: BoxFit.contain )
                  ),
                ),
                
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8WcUwfE3ovPBnSxA5iKgrbwsnm2pazniOFbFemtBQEA&s'),fit: BoxFit.contain )
                  ),
                ),
                SizedBox(width: 30,),
              ],
            ),
            SizedBox(height: 20,),

            Center(
              child: Text('Terms and contitions access\n            allow to use terms',style: TextStyle(
                color: Colors.grey,fontSize: 15
              ),),
            )
          ],
        ),
        ),
      ),
    );
  }
}