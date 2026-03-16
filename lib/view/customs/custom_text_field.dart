import 'package:flutter/material.dart';
import 'package:notes/core/app_colors/app_colors.dart';
import 'package:notes/core/responsive_ui/extensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lableText,
    required this.maxLines,
  });
  final String lableText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      style: TextStyle(color: Colors.black),
      cursorColor: AppColors.PinkAccent,
      decoration: InputDecoration(
        labelText: lableText,

        labelStyle: TextStyle(color: AppColors.PinkAccent),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.sp),
    borderSide: BorderSide(color: AppColors.PinkAccent),
  );
}
