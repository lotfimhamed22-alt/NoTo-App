import 'package:flutter/material.dart';
import 'package:notes/core/app_colors/app_colors.dart';
import 'package:notes/core/responsive_ui/extensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lableText,
    this.maxLines = 1,
    this.onSaved,
    required this.controller,
  });

  final String lableText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      controller: controller,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is Reqired";
        }
      },
      maxLines: maxLines,
      style: TextStyle(color: Colors.black),
      cursorColor: AppColors.PinkAccent,
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: TextStyle(color: AppColors.PinkAccent),
        enabledBorder: outlineInputBorder(AppColors.PinkAccent),
        focusedErrorBorder: outlineInputBorder(AppColors.PinkAccent),
        focusedBorder: outlineInputBorder(AppColors.PinkAccent),
        errorBorder: outlineInputBorder(Colors.green),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.sp),
    borderSide: BorderSide(color: color),
  );
}
