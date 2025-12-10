import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/sharedPref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceScreen extends StatefulWidget {
  const SharedPrefrenceScreen({super.key});

  @override
  State<SharedPrefrenceScreen> createState() => _SharedPrefrenceScreenState();
}

class _SharedPrefrenceScreenState extends State<SharedPrefrenceScreen> {
String?name;
String?email;
String?password;

  TextEditingController _email =TextEditingController();
  TextEditingController _password =TextEditingController();
  TextEditingController _name =TextEditingController();
  Future<void> saveData()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('email', _email.text);
    await pref.setString('Name', _name.text);
    await pref.setString('password', _password.text);
    _email.clear();
   _name.clear();
    _password.clear();
    
  }
  Future<void> loadData()async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    email = pref.getString('email');
    name = pref.getString('Name');
    password = pref.getString('password');
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('shared prefrence',)),
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter your name'),
             TextFormField(
              controller: _name,
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
                ],
              ),
              SizedBox(height: 20,),
              Text('Enter your email'),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
        return 'Email is required';
            }
            
                },
                controller: _email,
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
              SizedBox(height: 20,),
              Text('password'),
             TextFormField(
              controller: _password,
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
            SizedBox(height: 100,),
            Center(
                child: InkWell(
                  onTap: () async {
                    if(_email.text.isNotEmpty&&_name.text.isNotEmpty&&_password.text.isNotEmpty){
                       await saveData();
                       
                    }
                    await loadData();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SharedprefScreen(email: email!, name: name!, password: password!),));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                    child: Center(child: Text('Login',style: TextStyle(color: Colors.black,fontSize:30 ,fontWeight: FontWeight.w600),)),
                  ),
                ),
            ),
              
            
          ],
        ),
      ),
    );
  }
}