import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:main_project_hive/domain/models/student_model.dart';
import 'package:main_project_hive/presentation/screens/details_students/details_student.dart';
import 'package:main_project_hive/presentation/screens/edit_students/edit_student.dart';

class ListAllStudent extends StatelessWidget {
  final Box<Student> studentBox = Hive.box<Student>('Student');
  ListAllStudent({super.key});

  void showDeletedAlertBox({
    required Box<Student> studenstList,
    required Student student,
    required BuildContext context,
  }) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Column(
              children: const [
                Text("Student Deleted"),
                Divider(),
              ],
            ),
            content:
                const Text("Student deleted successfully from the database"),
            actions: [
              TextButton(
                onPressed: () async {
                  await studenstList.delete(student.key);
                  Navigator.pop(ctx);
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentBox.listenable(),
      builder: (BuildContext context, Box<Student> studentBox, Widget? child) {
        return studentBox.isEmpty
            ? const Center(
                child: Text('The List is Empty'),
              )
            : ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: studentBox.length,
                itemBuilder: (context, index) {
                  final key = studentBox.keys.toList()[index];
                  final student = studentBox.get(key);
                  File imageFile = File(student!.image);
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (conntext) =>
                              DetailsStudent(student: student),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: FileImage(imageFile),
                    ),
                    title: Text(student.name),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditStudent(
                                  student: student,
                                  studentKey: key,
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Color.fromRGBO(173, 194, 169, 1),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showDeletedAlertBox(
                              studenstList: studentBox,
                              student: student,
                              context: context,
                            );
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Color.fromRGBO(173, 194, 169, 1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
      },
    );
  }
}
