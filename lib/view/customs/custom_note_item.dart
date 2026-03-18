import 'package:flutter/material.dart';
import 'package:notes/core/app_colors/app_colors.dart';
import 'package:notes/core/responsive_ui/extensions.dart';
import 'package:notes/model/item_node_model.dart';
import 'package:notes/view/screens/add_notes.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.data});
  final ItemNodeModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return AddNotes();
            },
          ),
        );
      },
      child: Container(
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
                data.title,
                style: TextStyle(fontSize: 36.sp, color: AppColors.blackColor),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  data.subTitle,
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
                data.date,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.whiteOpacity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
