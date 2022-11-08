part of 'edit_student_bloc.dart';

@freezed
class EditStudentState with _$EditStudentState {
  const factory EditStudentState({
    required Student student,
  }) = _EditStudentState;

  factory EditStudentState.initial() {
    return EditStudentState(
      student: Student(
        name: '',
        age: '',
        email: '',
        phone: '',
        image: '',
      ),
    );
  }
}
