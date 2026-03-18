import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/model/item_node_model.dart';
import 'package:notes/view/customs/custom_button.dart';
import 'package:notes/view/customs/custom_text_field.dart';
import 'package:notes/view_model/add_note/add_note_cubit.dart';
import 'package:notes/view_model/note/note_cubit.dart';

class CustomFormKey extends StatefulWidget {
  const CustomFormKey({super.key});

  @override
  State<CustomFormKey> createState() => _CustomFormKeyState();
}

class _CustomFormKeyState extends State<CustomFormKey> {
  String? title, subTitle;
  final GlobalKey<FormState> _globalKey = GlobalKey();
  //final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final bool isLoading = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      //autovalidateMode: _autovalidateMode,
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Gap(35.h),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                lableText: 'Title',
                maxLines: 1,
                controller: _titleController,
              ),
              Gap(15.h),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                lableText: 'Content',
                maxLines: 5,
                controller: _subTitleController,
              ),
              Gap(15.h),

              CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (_globalKey.currentState!.validate()) {
                    _globalKey.currentState!.save();
                    var note = ItemNodeModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.red.toARGB32(),
                    );
                    context.read<AddNoteCubit>().addNote(note);
                    setState(() {});
                  }
                },
              ),

              Gap(30),
            ],
          );
        },
      ),
    );
  }
}
