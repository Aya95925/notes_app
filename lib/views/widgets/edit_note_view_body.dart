import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(height: 50),

          CustomAppbar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 32),
          CustomTextFiels(label: 'Title', onSaved: (String? p1) {  },),
          SizedBox(height: 18),
          CustomTextFiels(label: 'Content', maxLines: 7, onSaved: (String? p1) {  },),
        ],
      ),
    );
  }
}
