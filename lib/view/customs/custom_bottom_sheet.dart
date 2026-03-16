import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes/core/app_colors/app_colors.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/view/customs/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Gap(35.h),
            CustomTextField(lableText: 'Title', maxLines: 1),
            Gap(15.h),
            CustomTextField(lableText: 'Content', maxLines: 5),
            Gap(130.h),
            CustomButton(),
            Gap(39.h),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.w,
      height: 54.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "add",
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
