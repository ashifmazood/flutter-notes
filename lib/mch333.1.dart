import 'package:flutter/material.dart';
import 'package:flutter_demo/mch333_reg.dart';
import 'package:flutter_demo/mch333_sign.dart';

class Mch3331 extends StatefulWidget {
  const Mch3331({super.key});

  @override
  State<Mch3331> createState() => _Mch3331State();
}

class _Mch3331State extends State<Mch3331> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150,),
              
              Row(
                children: [SizedBox(width: 50,),
                  CircleAvatar(radius: 150,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/022/149/342/non_2x/hot-italian-pizza-cutout-png.png',),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Text('Welcome to Urban Bites',style: TextStyle(
                color: Colors.grey,fontSize: 16
              ),),
              SizedBox(height: 30,),
              Text('Create an account',style: TextStyle(
                color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 30,),
              Text('Join us for it dishgthful urban dinig\nexperiance with the best postnes in\n                             town',
              style: TextStyle(color: Colors.grey,fontSize: 16),
              ),
              SizedBox(height: 35,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Mch333Reg(),));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 193, 17, 4),
                      ),
                      child: Center(child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 17),)),
                    ),
                  ),
                   InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Mch333Sign(),));
                    },
                     child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Colors.black)
                      ),
                      
                      child: Center(child: Text('Sign in',style: TextStyle(color: Colors.black,fontSize: 17),)),
                                     ),
                   ),
          
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}