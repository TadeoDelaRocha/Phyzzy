import 'package:quizics/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:quizics/features/list_pages/ui/lessons_listview/lesson_gridview_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonsListView extends StatelessWidget {
  const LessonsListView({
    required this.lessonsList,
    super.key,
  });

  final AsyncValue<List<Lesson>> lessonsList;

  @override
  Widget build(BuildContext context) {
    // Checking if our data has loaded
    switch (lessonsList) {
      // It has loaded 
      case AsyncData(:final value):
        return value.isEmpty 
          ? const Center(child: Text('No Lessons'),
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
              children: value.map((lessonData) {
                return LessonGridViewItem(
                  lesson: lessonData,
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