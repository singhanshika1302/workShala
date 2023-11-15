import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class solidButton extends StatelessWidget {
  final String text;
  void Function()? onTap;
  solidButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          onTap, // Provide the callback function for the button's onPressed event
      child: Padding(
        padding:
            const EdgeInsets.all(12.0), // Add more padding to expand the button
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set the text color to white
            fontSize: 16,
          ),
        ),
      ),
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: Colors.white,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(8.0), // Adjust the border radius
            side: BorderSide(
              color:Color(0xFF946CC3) ,
              width: 2, // Adjust the border width
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xFF946CC3)// Set the button background color
        ),
      ),
    );
  }
}