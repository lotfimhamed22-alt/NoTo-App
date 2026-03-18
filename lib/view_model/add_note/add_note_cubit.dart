import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/constants/const_String.dart';
import 'package:notes/model/item_node_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(ItemNodeModel note) async {
    emit(AddNoteLoading());
    print("loading");
    try {
      var notesBox = Hive.box<ItemNodeModel>(kBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
      print("success");
    } catch (e) {
      emit(AddNoteFailure(message: e.toString()));
      print("fail");
    }
  }
}
