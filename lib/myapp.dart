//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/task%201.dart';
import 'package:flutter_1/task%202.dart';
//import 'package:flutter_1/task%202.dart';
import 'package:flutter_1/task%203.dart';
import 'package:flutter_1/task%204.dart';
import 'package:flutter_1/task%205.dart';
import 'package:flutter_1/task%206.dart';
import 'package:flutter_1/task%207.dart';
import 'package:flutter_1/task%208.dart';
import 'package:flutter_1/task%209.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Task_1(),
        routes: {
          'routetask1':(context)=>Task_1(),
          'routetask2':(context)=>Task_2(),
          'routetask3':(context)=>Task_3(),
          'routetask4':(context)=>Task_4(),
        },
        debugShowCheckedModeBanner:false
    );
  }
}
