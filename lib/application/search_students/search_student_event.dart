part of 'search_student_bloc.dart';

@freezed
class SearchStudentEvent with _$SearchStudentEvent {
  const factory SearchStudentEvent.searchStudentDone(
      {required String searchValue}) = SearchStudentDone;

  const factory SearchStudentEvent.initialSearch() = InitialSearch;
}
