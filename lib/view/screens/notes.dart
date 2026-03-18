import 'package:flutter/material.dart';
import 'package:notes/view/customs/custom_bottom_sheet.dart';
import 'package:notes/view/customs/custom_notes_body.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            context: context,
            backgroundColor: Colors.white,
            builder: (BuildContext context) {
              return CustomBottomSheet();
            },
          );
        },
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      body: CustomNotesBody(),
    );
  }
}
