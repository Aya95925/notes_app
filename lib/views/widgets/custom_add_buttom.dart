import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomAddButtom extends StatelessWidget {
  const CustomAddButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text('Add', style: TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }
}
