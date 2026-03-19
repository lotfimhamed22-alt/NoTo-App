import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/view/customs/custom_note_item.dart';
import 'package:notes/view_model/note/note_cubit.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  void initState() {
    context.read<NoteCubit>().fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state is NoteSuccess ? state.note.length : 0,
          itemBuilder: (context, index) {
            if (state is NoteSuccess) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: CustomNoteItem(data: state.note[index]),
              );
            } else
              Text("falure");
            return null;
          },
        );
      },
    );
  }
}
