import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ur_loncherSCreen extends StatefulWidget {
  const Ur_loncherSCreen ({super.key});

  @override
  State<Ur_loncherSCreen> createState() => Ur_loncherSCreenState();
}

class Ur_loncherSCreenState extends State<Ur_loncherSCreen> {
  Future<void>openUrl(Uri url)async{
    if(!await launchUrl(url,mode: LaunchMode.externalApplication)){
      throw Exception("Could not launch the link");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ur_loncher',style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(onTap: () {
              openUrl(
                Uri.parse('https://wa.me/1234567890?text=Hello')
              );
            },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.yellow),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage('https://png.pngtree.com/png-clipart/20190516/original/pngtree-whatsapp-icon-png-image_3584845.jpg'),fit: BoxFit.fill)),
                      
                    ),
                    Text(' Whatsapp')
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            
            InkWell(onTap: () {
              openUrl(
                Uri(
                  scheme: 'tel',
                  path: '1234567890',
                ),
              );
            },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.yellow),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCwGTWKh4cB2zTG0vcWMUcmf-eyRIr-AzpJg&s'),fit: BoxFit.fill)),
                      
                    ),
                    Text('Phone')
                  ],
                ),
              ),
            ),
             SizedBox(height: 10,),
            InkWell(onTap: () {
              openUrl(
                Uri(
                  scheme: 'mailto',
                  path: 'example@mail.com',
                  query: 'subject=Hello&body=This is a test email'
                )
              );
            },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.yellow),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: NetworkImage(' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGCN8WkKbWIerwpehxmJucgaisVPh3s9vC6w&s'),fit: BoxFit.fill)),
                     
                    ),
                    Text('Gmail')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}