import 'package:flutter/material.dart';
import 'package:notes/core/app_colors/app_colors.dart';
import 'package:notes/core/responsive_ui/extensions.dart';

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 50.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.whiteOpacity,
        borderRadius: BorderRadius.circular(18),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 38.sp),
      ),
    );
  }
}
