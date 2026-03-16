import 'package:flutter/material.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/view/customs/custom_container_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 24.sp)),
        Spacer(),
        CustomContainerIcon(icon: icon),
      ],
    );
  }
}
