import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_buttom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
      child: Column(
        children: [
          const CustomTextFiels(label: 'Title'),
          SizedBox(height: 22),
          const CustomTextFiels(label: 'Content', maxLines: 5),
          Spacer(),
          CustomAddButtom(),

          // Add your form fields and buttons here
        ],
      ),
    );
  }
}
