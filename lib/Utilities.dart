import 'package:flutter/material.dart';






//ending statement of already have an acc or create a new acc
Widget endStatement(String text1, String text2, BuildContext context, page) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text1,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 17.0,
        ),),
      TextButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> page));
        },
        child: Text(
          text2,
          style: const TextStyle(
            color: Color(0xFF946CC3),
            fontSize: 17.0,
          ),),)
    ],
  );
}