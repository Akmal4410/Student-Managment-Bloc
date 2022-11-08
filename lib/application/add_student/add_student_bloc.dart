import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:main_project_hive/domain/models/student_model.dart';

part 'add_student_event.dart';
part 'add_student_state.dart';
part 'add_student_bloc.freezed.dart';

class AddStudentBloc extends Bloc<AddStudentEvent, AddStudentState> {
  AddStudentBloc() : super(AddStudentState.initial()) {
    final Box<Student> studentBox = Hive.box<Student>('Student');
    on<AddStudentToHive>((event, emit) async {
      await studentBox.add(event.student);
    });
    on<ChangeImage>((event, emit) async {
      final student = Student(
        name: state.student.name,
        age: state.student.age,
        email: state.student.email,
        phone: state.student.phone,
        image: event.imagePath,
      );
      emit(AddStudentState(student: student));
      log('Change Button pressed');
    });
  }
}
