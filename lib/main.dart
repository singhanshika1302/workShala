// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshala/screens/screens_Aditya/jobDescription.dart';
import 'package:workshala/screens/screens_Anshika/filterPage.dart';

import 'screens/screens_Anshika/categories.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,

     initialRoute: '/categories',
     routes: {
      '/categories':(context) => categories(),
      '/filter':(context) => Filter_Page(),
      '/jobDesc':(context) => job(),
      
     },
  ));
}














import 'package:workshala/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
