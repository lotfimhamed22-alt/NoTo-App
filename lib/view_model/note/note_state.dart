part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteSuccess extends NoteState {
  final List<ItemNodeModel> note;

  NoteSuccess({required this.note});
}

final class NoteFailure extends NoteState {
  final String message;

  NoteFailure({required this.message});
}
