import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/view/customs/custom_appbar.dart';
import 'package:notes/view/customs/custom_container_icon.dart';
import 'package:notes/view/customs/custom_list_view.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Gap(70.h),
          CustomAppbar(text: "Notes", icon: Icons.search),
          Gap(18.h),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}
