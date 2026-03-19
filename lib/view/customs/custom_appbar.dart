import 'package:flutter/material.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/view/customs/custom_container_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 24.sp)),
        Spacer(),
        CustomContainerIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
