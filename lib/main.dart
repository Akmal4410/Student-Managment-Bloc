import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:main_project_hive/application/add_student/add_student_bloc.dart';
import 'package:main_project_hive/application/edit_student/edit_student_bloc.dart';
import 'package:main_project_hive/application/search_students/search_student_bloc.dart';
import 'package:main_project_hive/domain/models/student_model.dart';
import 'package:main_project_hive/presentation/screens/view_students/view_students.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(StudentAdapter());
  }
  await Hive.openBox<Student>('Student');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddStudentBloc()),
        BlocProvider(create: (context) => SearchStudentBloc()),
        BlocProvider(create: (context) => EditStudentBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ViewStudents(),
      ),
    );
  }
}
