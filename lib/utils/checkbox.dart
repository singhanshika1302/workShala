import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxListWidget extends StatefulWidget {
  final List<String> options;
  final List<bool> selectedOptions;

  CheckboxListWidget({required this.options, required this.selectedOptions});

  @override
  _CheckboxListWidgetState createState() => _CheckboxListWidgetState();
}

class _CheckboxListWidgetState extends State<CheckboxListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.options.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(widget.options[index], style: GoogleFonts.inter(color:  Color(0xFF8F8F8F)),),
          leading: Icon(widget.selectedOptions[index]
              ? Icons.check_box
              : Icons.check_box_outline_blank, color:widget.selectedOptions[index]? Color(0xFF946CC3):Colors.black ,),
          onTap: () {
            setState(() {
              widget.selectedOptions[index] = !widget.selectedOptions[index];
            });
          },
        );
      },
    );
  }
}