import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/view/customs/custom_appbar.dart';
import 'package:notes/view/customs/custom_text_field.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddNoteBody());
  }
}

class AddNoteBody extends StatelessWidget {
  const AddNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Gap(70.h),
          CustomAppbar(text: "Edit Note", icon: Icons.check),
          Gap(50.h),
          CustomTextField(lableText: "Title", maxLines: 1),
          Gap(15.h),
          CustomTextField(lableText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
