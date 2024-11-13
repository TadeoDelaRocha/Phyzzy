import 'package:quizics/common/utils/colors.dart' as constants;
import 'package:quizics/features/list_pages/controller/subjects_list_controller.dart';
import 'package:quizics/features/list_pages/ui/subjects_listview/subjects_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubjectsListPage extends ConsumerWidget {
  const SubjectsListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subjectsListValue = ref.watch(subjectsListControllerProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Subjects',
        ),
        backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: SubjectsListView(
        subjectsList: subjectsListValue,
      ),
    );
  }
}