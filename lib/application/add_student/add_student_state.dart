part of 'add_student_bloc.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState({
    required Student student,
  }) = _AddStudentState;

  factory AddStudentState.initial() {
    return AddStudentState(
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
