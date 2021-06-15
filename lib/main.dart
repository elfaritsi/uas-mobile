import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:uas_daeng_mhd_el_faritsi/Aritmatika.dart';
import 'package:uas_daeng_mhd_el_faritsi/data_table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Aritmatika()
    );
  }

  

  
}
