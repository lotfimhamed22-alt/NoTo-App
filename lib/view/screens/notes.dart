import 'package:flutter/material.dart';
import 'package:notes/view/customs/custom_notes_body.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: Colors.pinkAccent,
        child: Icon(Icons.add),
      ),
      body: CustomNotesBody(),
    );
  }
}
