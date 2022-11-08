part of 'add_student_bloc.dart';

@freezed
class AddStudentEvent with _$AddStudentEvent {
  const factory AddStudentEvent.addStudentToHive({required Student student}) =
      AddStudentToHive;

  const factory AddStudentEvent.changeImage({required String imagePath}) =
      ChangeImage;
}
