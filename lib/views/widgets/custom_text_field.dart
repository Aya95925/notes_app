import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiels extends StatelessWidget {
  const CustomTextFiels({super.key, required this.label, this.maxLines = 1});
  final String label;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: buildBorder(color: kprimaryColor),
        labelText: label,
        labelStyle: TextStyle(color: kprimaryColor),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
