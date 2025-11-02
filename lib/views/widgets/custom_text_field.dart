import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiels extends StatelessWidget {
  const CustomTextFiels({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
