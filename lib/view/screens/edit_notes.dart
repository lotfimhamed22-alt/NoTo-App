// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/model/item_node_model.dart';
import 'package:notes/view/customs/custom_appbar.dart';
import 'package:notes/view/customs/custom_text_field.dart';
import 'package:notes/view_model/note/note_cubit.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key, required this.note});
  final ItemNodeModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddNoteBody(note: note));
  }
}

class AddNoteBody extends StatefulWidget {
  const AddNoteBody({Key? key, required this.note}) : super(key: key);
  final ItemNodeModel note;

  @override
  State<AddNoteBody> createState() => _AddNoteBodyState();
}

class _AddNoteBodyState extends State<AddNoteBody> {
  TextEditingController _titleController = TextEditingController();

  TextEditingController _subTitleController = TextEditingController();

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              Gap(70.h),
              CustomAppbar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subTitle ?? widget.note.subTitle;
                  widget.note.save();
                  context.read<NoteCubit>().fetchAllNotes();
                  Navigator.pop(context);
                },
                text: "Edit Note",
                icon: Icons.check,
              ),
              Gap(50.h),
              CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                lableText: "Title",
                maxLines: 1,
                controller: _titleController,
              ),
              Gap(15.h),
              CustomTextField(
                onChanged: (value) {
                  subTitle = value;
                },
                lableText: "Content",
                maxLines: 5,
                controller: _subTitleController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
