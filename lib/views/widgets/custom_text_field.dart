import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiels extends StatelessWidget {
  const CustomTextFiels({super.key, required this.label, this.maxLines = 1, required this.onSaved});
  final String label;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: buildBorder(color: kprimaryColor),
        labelText: label,
        labelStyle: TextStyle(color: kprimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
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
