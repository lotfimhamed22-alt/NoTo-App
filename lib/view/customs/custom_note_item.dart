import 'package:flutter/material.dart';
import 'package:notes/core/app_colors/app_colors.dart';
import 'package:notes/core/responsive_ui/extensions.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 120.h,
      padding: EdgeInsets.all(12),
      // width: 120.w,
      decoration: BoxDecoration(
        color: Colors.pink[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Notes ",
              style: TextStyle(fontSize: 36.sp, color: AppColors.blackColor),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                "Build Your Career With\nLotfi Mohammed",
                style: TextStyle(
                  fontSize: 21.sp,
                  color: AppColors.whiteOpacity,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 44.sp,
                color: AppColors.blackColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              "March 2026",
              style: TextStyle(fontSize: 18.sp, color: AppColors.whiteOpacity),
            ),
          ),
        ],
      ),
    );
  }
}
