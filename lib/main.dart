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












