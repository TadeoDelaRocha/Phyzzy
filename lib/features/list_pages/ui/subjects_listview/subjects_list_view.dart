import 'package:quizics/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:quizics/features/list_pages/ui/subjects_listview/subject_gridview_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubjectsListView extends StatelessWidget {
  const SubjectsListView({
    required this.subjectsList,
    super.key,
  });

  final AsyncValue<List<Subject>> subjectsList;

  @override
  Widget build(BuildContext context) {
    // Checking if our data has loaded
    switch (subjectsList) {
      // It has loaded 
      case AsyncData(:final value):
        return value.isEmpty 
          ? const Center(child: Text('No Subjects'),
          )
          : OrientationBuilder(builder: (context, orientation) {
            return GridView.count(
              crossAxisCount:
                (orientation == Orientation.portrait) ? 2 : 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              padding: const EdgeInsets.all(4),
              childAspectRatio: 
                (orientation == Orientation.portrait) ? 0.9 : 1,
              children: value.map((subjectData) {
                return SubjectGridViewItem(
                  subject: subjectData,
                );
              }).toList(growable: false),
            );
          },
          );

      case AsyncError():
        return const Center(
          child: Text('Error'),
        );
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator(),);
      case _:
        return const Center(
          child: Text('Error'),
        );
    }
  }
}