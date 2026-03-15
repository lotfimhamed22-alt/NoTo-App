import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes/core/responsive_ui/extensions.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [Gap(35.h), CustomTextField()]),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Title",
        labelStyle: TextStyle(color: Colors.pinkAccent),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.sp),
          borderSide: BorderSide(color: Colors.pink.shade300),
        ),
      ),
    );
  }
}
