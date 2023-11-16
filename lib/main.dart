// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshala/filterPage.dart';

import 'categories.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,

     initialRoute: '/jobdes',
     routes: {
      '/categories':(context) => categories(),
      '/filter':(context) => Filter_Page(),
      
      
     },
  ));
}












