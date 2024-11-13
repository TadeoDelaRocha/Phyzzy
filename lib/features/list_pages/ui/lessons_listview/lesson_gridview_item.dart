import 'package:quizics/common/navigation/router/routes.dart';
import 'package:quizics/features/list_pages/ui/lessons_listview/lesson_gridview_item_card.dart';
import 'package:quizics/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LessonGridViewItem extends StatelessWidget {
  const LessonGridViewItem({
    required this.lesson,
    super.key,
  });

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        context.goNamed(
          AppRoute.question.name,
          pathParameters: {'lessonId': lesson.id},
          extra: lesson,
        );
      },
      child: LessonGridViewItemCard(
        lesson: lesson,
      ),
    );
  }
}