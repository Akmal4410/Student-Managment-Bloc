import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:main_project_hive/domain/models/student_model.dart';

part 'search_student_event.dart';
part 'search_student_state.dart';
part 'search_student_bloc.freezed.dart';

class SearchStudentBloc extends Bloc<SearchStudentEvent, SearchStudentState> {
  SearchStudentBloc() : super(SearchStudentState.initiial()) {
    on<InitialSearch>((event, emit) {
      final Box<Student> studentBox = Hive.box<Student>('Student');
      emit(SearchStudentState(
        studentList: studentBox.values.toList(),
        searchStudentlist: studentBox.values.toList(),
      ));
    });

    on<SearchStudentDone>((event, emit) {
      List<Student> _searchStudentlist = state.searchStudentlist;
      emit(
        SearchStudentState(
          studentList: state.studentList,
          searchStudentlist: state.searchStudentlist,
        ),
      );

      _searchStudentlist = state.studentList
          .where((element) => element.name
              .toLowerCase()
              .contains(event.searchValue.toLowerCase()))
          .toList();
      emit(
        SearchStudentState(
          studentList: state.studentList,
          searchStudentlist: _searchStudentlist,
        ),
      );
    });
  }
}
