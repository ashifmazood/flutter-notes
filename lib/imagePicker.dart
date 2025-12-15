import 'package:flutter/material.dart';

class ImagepickerScreen extends StatefulWidget {
  const ImagepickerScreen({super.key});

  @override
  State<ImagepickerScreen> createState() => _ImagepickerScreenState();
}

class _ImagepickerScreenState extends State<ImagepickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('IMAGE PICKER',style: TextStyle(
            color: Colors.black,fontSize: 40,fontWeight: FontWeight.w400
          ),),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 200,
              child: Icon(Icons.photo_camera_front,size:120 ,),
            ),

            SizedBox(height: 50,),
        
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
        
              ),
              child: Center(child: Text('image',style: TextStyle(color: Colors.black,fontSize: 20),)),
            ),
            SizedBox(height: 50,),
             Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
        
              ),
              child: Center(child: Text('camera',style: TextStyle(color: Colors.black,fontSize: 20),)),
            )
          
            
          ],
        ),
      ),
    );
  }
}