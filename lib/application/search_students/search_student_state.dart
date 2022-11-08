part of 'search_student_bloc.dart';

@freezed
class SearchStudentState with _$SearchStudentState {
  const factory SearchStudentState({
    required List<Student> studentList,
    required List<Student> searchStudentlist,
  }) = _SearchStudentState;

  factory SearchStudentState.initiial() {
    return const SearchStudentState(
      studentList: [],
      searchStudentlist: [],
    );
  }
}
