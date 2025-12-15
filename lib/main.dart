import 'package:flutter/material.dart';
import 'package:flutter_demo/Events.dart';
import 'package:flutter_demo/Tab_bar.dart';
import 'package:flutter_demo/Togglebotton.dart';
import 'package:flutter_demo/accetimage.dart';
import 'package:flutter_demo/alert.dart';
import 'package:flutter_demo/bottomnavigation.dart';
import 'package:flutter_demo/botton.dart';
import 'package:flutter_demo/botton2.0.dart';
import 'package:flutter_demo/column.dart';
import 'package:flutter_demo/column2.dart';
import 'package:flutter_demo/datepicker.dart';
import 'package:flutter_demo/drop_down.dart';
import 'package:flutter_demo/drowyer.dart';
import 'package:flutter_demo/exam_details.dart';
import 'package:flutter_demo/fluttertoast.dart';
import 'package:flutter_demo/foodscreen.dart';
import 'package:flutter_demo/gridview.dart';
import 'package:flutter_demo/gridview2.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/imagePicker.dart';
import 'package:flutter_demo/listview.dart';
import 'package:flutter_demo/lottie.dart';
import 'package:flutter_demo/macheinText002.dart';
import 'package:flutter_demo/mecheinBootombar.dart';
import 'package:flutter_demo/mechine_test1.0.dart';
import 'package:flutter_demo/myfile.dart';
import 'package:flutter_demo/radiobutton.dart';
import 'package:flutter_demo/shared_prefrence.dart';
import 'package:flutter_demo/singlechildscrolable.dart';
import 'package:flutter_demo/stack.dart';
import 'package:flutter_demo/stack_screen2.dart';
import 'package:flutter_demo/tasck_screen3.dart';
import 'package:flutter_demo/timepicker.dart';
import 'package:flutter_demo/trying.dart';
import 'package:flutter_demo/urLoncher.dart';
import 'package:flutter_demo/validator.dart';
import 'package:flutter_demo/task1.dart';
import 'package:flutter_demo/task10.dart';
import 'package:flutter_demo/task11.dart';
import 'package:flutter_demo/task12screan.dart';
import 'package:flutter_demo/task2.dart';
import 'package:flutter_demo/task3.dart';
import 'package:flutter_demo/task4.dart';
import 'package:flutter_demo/task5.dart';
import 'package:flutter_demo/task6.dart';
import 'package:flutter_demo/task7.dart';
import 'package:flutter_demo/singleChildScrolview.dart';
import 'package:flutter_demo/task9.dart';
import 'package:flutter_demo/taskScreen.dart';
import 'package:flutter_demo/taskpg1.dart';
import 'package:flutter_demo/textFormField.dart';
import 'package:flutter_demo/textfiledbotton.dart';
import 'package:flutter_demo/wathsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
 

      
      home: BTM_MCHScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

