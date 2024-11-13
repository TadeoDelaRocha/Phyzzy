import 'package:quizics/common/utils/colors.dart' as constants;
import 'package:quizics/features/list_pages/controller/lessons_list_controller.dart';
import 'package:quizics/features/list_pages/ui/lessons_listview/lesson_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizics/features/list_pages/data/lessons_id_model.dart';

class LessonsListPage extends ConsumerWidget {
  const LessonsListPage({
    required this.subjectId,
    super.key,
  });

  final String subjectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(subjectIdProvider.notifier).state = subjectId;

    final lessonsListValue = ref.watch(lessonsListControllerProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lessons',
        ),
        backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: LessonsListView(
        lessonsList: lessonsListValue,
      ),
    );
  }
}