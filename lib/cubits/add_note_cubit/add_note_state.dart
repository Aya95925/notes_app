part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteloading extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFailer extends AddNoteState {
  final String errorMassage;
  AddNoteFailer(this.errorMassage);
}
