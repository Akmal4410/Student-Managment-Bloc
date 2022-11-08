import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_project_hive/application/search_students/search_student_bloc.dart';
import 'package:main_project_hive/presentation/widgets/text_input_field.dart';

class SearchScreen extends StatelessWidget {
  final _searchController = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchStudentBloc>(context).add(const InitialSearch());
    });
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 245, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 194, 169, 1),
        title: const Text("Search Students"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            TextInputField(
              validator: (value) {
                return;
              },
              icon: Icons.search,
              hintText: "Search Names",
              controller: _searchController,
              onChanged: (value) {
                BlocProvider.of<SearchStudentBloc>(context).add(
                  SearchStudentDone(searchValue: value),
                );
              },
            ),
            BlocBuilder<SearchStudentBloc, SearchStudentState>(
              builder: (context, state) {
                return Expanded(
                  child: (state.searchStudentlist.isNotEmpty)
                      ? ListView.separated(
                          itemBuilder: (context, index) {
                            File imageFile =
                                File(state.searchStudentlist[index].image);
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: FileImage(imageFile),
                                radius: 40,
                              ),
                              title: Text(state.searchStudentlist[index].name),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: state.searchStudentlist.length,
                        )
                      : const Center(
                          child: Text(
                          "The list is Empty",
                          style: TextStyle(color: Colors.black),
                        )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
