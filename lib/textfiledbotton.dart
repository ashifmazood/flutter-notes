import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/textfiledbotton2.dart';

class Textfiledbotton  extends StatefulWidget {
  const Textfiledbotton({super.key});

  @override
  State<Textfiledbotton> createState() => _TextfiledbottonState();
}

class _TextfiledbottonState extends State<Textfiledbotton> {
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Login',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.w700),),
            SizedBox(height: 100,),
            
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('email adress',style: TextStyle(color: Colors.deepOrange,fontSize: 20),textAlign: TextAlign.left,),
              ],
            ),
           TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'email adress',
              labelText: 'email',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange),
                
              ),
              enabled: true,
              focusColor: Colors.deepOrange,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange),
                
              ),
              fillColor: Colors.deepOrange.shade200,
              filled: true,
              suffixIcon: Icon(Icons.mail)
            ),
            keyboardType: TextInputType.emailAddress,
           ),
           SizedBox(height: 50,),
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('password',style: TextStyle(color: Colors.deepOrange,fontSize: 20),textAlign: TextAlign.left,),
             ],
           ),
           TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: 'password',
              labelText: 'password',
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
              enabled: true,
              focusColor: Colors.deepOrange,
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange,)),
              fillColor: Colors.deepOrange.shade200,
              filled: true,
              suffixIcon: Icon(Icons.remove_red_eye)
            ),
            keyboardType: TextInputType.phone,
            obscureText: true,
            
           ),
           SizedBox(height: 150,),
           InkWell(onTap: () {
            print(emailController.text);
            print(passwordController.text);
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Textfiledbotton2()));
           },
             child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.40,
              decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600),)),
             ),
           )
          ],
        ),
      ),
    );
  }
}