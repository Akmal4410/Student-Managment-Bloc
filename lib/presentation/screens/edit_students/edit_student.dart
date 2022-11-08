import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:main_project_hive/application/edit_student/edit_student_bloc.dart';
import 'package:main_project_hive/domain/models/student_model.dart';
import 'package:main_project_hive/presentation/screens/view_students/view_students.dart';
import 'package:main_project_hive/presentation/widgets/button_rounded.dart';
import 'package:main_project_hive/presentation/widgets/profile_picture.dart';
import 'package:main_project_hive/presentation/widgets/text_input_field.dart';

class EditStudent extends StatelessWidget {
  final Student student;
  final dynamic studentKey;
  late final TextEditingController? _nameController;
  late final TextEditingController? _ageController;
  late final TextEditingController? _emailController;
  late final TextEditingController? _phoneController;
  String? imagePath;
  final _formKey = GlobalKey<FormState>();

  EditStudent({
    Key? key,
    required this.student,
    required this.studentKey,
  }) : super(key: key);

  getTextEditingControllerValues(BuildContext context) {
    _nameController = TextEditingController(text: student.name);
    _ageController = TextEditingController(text: student.age);
    _emailController = TextEditingController(text: student.email);
    _phoneController = TextEditingController(text: student.phone);
    imagePath = student.image;
  }

  Future<void> updatePhoto(BuildContext context) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    imagePath = image.path;
    BlocProvider.of<EditStudentBloc>(context).add(
      UpdateEditImage(newImage: imagePath!),
    );
  }

  Future<void> editStudent(BuildContext context) async {
    final name = _nameController!.text;
    final age = _ageController!.text;
    final email = _emailController!.text;
    final phone = _phoneController!.text;
    if (name.isEmpty ||
        age.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        imagePath == null) {
      return;
    }

    final _student = Student(
        name: name, age: age, email: email, phone: phone, image: imagePath!);

    BlocProvider.of<EditStudentBloc>(context).add(
      EditStudentHive(student: _student, key: studentKey),
    );

    showEditedAlertBox(context);
  }

  void showEditedAlertBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Column(
              children: const [
                Text("Student Editd"),
                Divider(),
              ],
            ),
            content: const Text("Student edited successfully to the database"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      ctx,
                      MaterialPageRoute(builder: (ctx) => const ViewStudents()),
                      (route) => false);
                  // Navigator.pop(ctx);
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    getTextEditingControllerValues(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 245, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 194, 169, 1),
        title: const Text("Edit Student"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 50),
              BlocBuilder<EditStudentBloc, EditStudentState>(
                builder: (context, state) {
                  return ProfilePicture(
                    imagePath: imagePath!,
                    onPressed: () {
                      updatePhoto(context);
                    },
                  );
                },
              ),
              const SizedBox(height: 30),
              TextInputField(
                icon: Icons.person,
                hintText: 'Name',
                controller: _nameController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Name field is emplty";
                  }
                  return null;
                },
              ),
              TextInputField(
                icon: Icons.numbers,
                hintText: 'Age',
                controller: _ageController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Age field is emplty";
                  }
                  return null;
                },
              ),
              TextInputField(
                icon: Icons.email,
                hintText: 'Email',
                controller: _emailController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Email field is emplty";
                  }
                  return null;
                },
              ),
              TextInputField(
                icon: Icons.phone,
                hintText: 'Phone',
                controller: _phoneController!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Phone field is emplty";
                  }
                  return null;
                },
              ),
              ButtonRounded(
                buttonText: "Edit Student",
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    editStudent(context);
                    log('edit student called');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
