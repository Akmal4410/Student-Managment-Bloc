import 'package:flutter/material.dart';
import 'package:main_project_hive/presentation/screens/add_students/add_students.dart';
import 'package:main_project_hive/presentation/screens/search_students/search_screen.dart';
import 'package:main_project_hive/presentation/screens/view_students/widgets/list_all_students.dart';

class ViewStudents extends StatelessWidget {
  const ViewStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 245, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 194, 169, 1),
        title: const Text("View Students"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListAllStudent(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(173, 194, 169, 1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => AddStudent(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
