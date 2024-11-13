export 'package:quizics/ui/subjectListPage.dart' show SubjectListPage;
import 'package:quizics/common/ui/pageListArguments.dart' show PageListArguments;
import 'package:flutter/material.dart';
import 'package:quizics/common/ui/columnDisplayer.dart';

class SubjectListPage extends StatelessWidget {
  static List<String> titleList = ["Math", "Physics", "Computer Science"];
  const SubjectListPage({super.key});
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
        route: "/Subjects",
        subRoute: "/Lessons",
        ),
      );
  }
}