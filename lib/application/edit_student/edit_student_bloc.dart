import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:main_project_hive/domain/models/student_model.dart';

part 'edit_student_event.dart';
part 'edit_student_state.dart';
part 'edit_student_bloc.freezed.dart';

class EditStudentBloc extends Bloc<EditStudentEvent, EditStudentState> {
  EditStudentBloc() : super(EditStudentState.initial()) {
    final Box<Student> studentBox = Hive.box<Student>('Student');
    on<UpdateEditImage>((event, emit) {
      final student = Student(
        name: state.student.name,
        age: state.student.age,
        email: state.student.email,
        phone: state.student.phone,
        image: event.newImage,
      );
      emit(EditStudentState(student: student));
    });

    on<EditStudentHive>((event, emit) async {
      log('${event.student.name} is the name]');
      await studentBox.put(event.key, event.student);
      log('${event.student.name} is the name off the new student');
    });
  }
}
