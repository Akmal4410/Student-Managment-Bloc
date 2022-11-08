// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:main_project_hive/application/add_student/add_student_bloc.dart';
import 'package:main_project_hive/domain/models/student_model.dart';
import 'package:main_project_hive/presentation/screens/view_students/view_students.dart';
import 'package:main_project_hive/presentation/widgets/button_rounded.dart';
import 'package:main_project_hive/presentation/widgets/text_input_field.dart';

class AddStudent extends StatelessWidget {
  AddStudent({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  String? imagePath;

  Future<void> addPhoto(BuildContext context) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    imagePath = image.path;
    BlocProvider.of<AddStudentBloc>(context)
        .add(ChangeImage(imagePath: imagePath!));
  }

  Future<void> addStudent(BuildContext context) async {
    final name = _nameController.text;
    final age = _ageController.text;
    final email = _emailController.text;
    final phone = _phoneController.text;

    if (age.isEmpty ||
        name.isEmpty ||
        email.isEmpty ||
        phone.isEmpty ||
        imagePath == null) {
      return;
    }

    final student = Student(
        name: name, age: age, email: email, phone: phone, image: imagePath!);
    BlocProvider.of<AddStudentBloc>(context).add(
      AddStudentToHive(student: student),
    );
    showAddedAlertBox(context);
  }

  void showAddedAlertBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Column(
              children: const [
                Text("Student Added"),
                Divider(),
              ],
            ),
            content: const Text("Student added successfully to the database"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      ctx,
                      MaterialPageRoute(builder: (context) => ViewStudents()),
                      (route) => false);
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 245, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 194, 169, 1),
        title: const Text("Add Student"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Stack(
                children: [
                  Center(
                    child: BlocBuilder<AddStudentBloc, AddStudentState>(
                      builder: (context, state) {
                        return CircleAvatar(
                          backgroundImage: (imagePath != null)
                              ? FileImage(File(state.student.image))
                              : const AssetImage("assets/image/ava.jpeg")
                                  as ImageProvider,
                          radius: 60,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 210,
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(173, 194, 169, 1),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          addPhoto(context);
                        },
                        icon: const Icon(
                          Icons.arrow_upward_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextInputField(
                icon: Icons.person,
                hintText: "Name",
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Name field is empty";
                  }
                  return null;
                },
              ),
              TextInputField(
                icon: Icons.numbers,
                hintText: "Age",
                controller: _ageController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Age field is empty";
                  }
                  return null;
                },
              ),
              TextInputField(
                icon: Icons.email,
                hintText: "Email",
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Email field is empty";
                  }
                  return null;
                },
              ),
              TextInputField(
                icon: Icons.phone,
                hintText: "Phone number",
                controller: _phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The Phone field is empty";
                  }
                  return null;
                },
              ),
              ButtonRounded(
                buttonText: "Add Student",
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    addStudent(context);
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
