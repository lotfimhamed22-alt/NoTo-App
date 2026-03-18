import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/core/constants/const_String.dart';
import 'package:notes/model/item_node_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  fetchAllNotes() {
    var notesBox = Hive.box<ItemNodeModel>(kBox);
    var note = notesBox.values.toList();
    print(note);
    emit(NoteSuccess(note: note));
    print("add note done");
  }
}
