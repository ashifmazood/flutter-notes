import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerScreen extends StatefulWidget {
  const ImagepickerScreen({super.key});

  @override
  State<ImagepickerScreen> createState() => _ImagepickerScreenState();
}

class _ImagepickerScreenState extends State<ImagepickerScreen> {
  File?_image;
  final ImagePicker picker = ImagePicker();


//pick image from gallery or camera
  void pickImage(ImageSource source)async{
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile !=null){
      setState(() {
        _image =File(pickedFile.path);
      });
    }
  }

  //Clear image selected

  void clearimage(){
    setState(() {
      _image=null;
    });
  }
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
              child:  _image != null?Image.file(_image!)
              :const Icon(Icons.person),
            ),

            SizedBox(height: 50,),
        
            InkWell(
              onTap:() {
                 pickImage(ImageSource.gallery);
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                      
                ),
                child: Center(child: Text('Gallery',style: TextStyle(color: Colors.black,fontSize: 20),)),
              ),
            ),
            SizedBox(height: 50,),
             InkWell(
              onTap: () {
                pickImage(ImageSource.camera);
              },
               child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                       
                ),
                child: Center(child: Text('camera',style: TextStyle(color: Colors.black,fontSize: 20),)),
                           ),
             )
          
            
          ],
        ),
      ),
    );
  }
}