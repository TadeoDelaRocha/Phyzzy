export 'package:quizics/ui/lessonListPage.dart' show LessonListPage;
import 'package:quizics/ui/pageListArguments.dart' show PageListArguments;
import 'package:flutter/material.dart';
import 'package:quizics/ui/columnDisplayer.dart';

class LessonListPage extends StatelessWidget {
  static List<String> titleList = ["Lesson 1", "Lesson 2", "Lesson 3"];
  const LessonListPage({super.key});
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as PageListArguments?;
    final String title = arguments!.title;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: ColumnDisplayer(
        titleList: titleList,
        route: "/Lessons",
        subRoute: "/Question",
        ),
      );
  }
}