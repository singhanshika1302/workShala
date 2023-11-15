import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categoriesCard extends StatefulWidget {
  final String img;
  final String label;

  const categoriesCard({super.key, required this.img, required this.label});

  @override
  State<categoriesCard> createState() => _categoriesCardState();
}

class _categoriesCardState extends State<categoriesCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
          child: Column(
            children: [
              SizedBox(height: 100, width: 80, child: Image.asset(widget.img)),
              Text(
                widget.label,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              )
            ],
          ),
          width: 100,
          height: 80,
          decoration: ShapeDecoration(
              shadows: [
                BoxShadow(
                  color: Color(0x59946CC3),
                  blurRadius: 10,
                  offset: Offset(-3, 4),
                  spreadRadius: 0,
                )
              ],
              color: isSelected
                  ? Color.fromRGBO(148, 108, 195, 0.3)
                  : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))),
    );
  }
}
