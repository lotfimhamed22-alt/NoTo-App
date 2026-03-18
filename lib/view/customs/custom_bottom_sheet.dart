import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/view/customs/custom_form_key.dart';
import 'package:notes/view_model/add_note/add_note_cubit.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocProvider(
          create: (context) => AddNoteCubit(),
          child: CustomFormKey(),
        ),
      ),
    );
  }
}
