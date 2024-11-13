import 'dart:async';

import 'package:quizics/features/list_pages/data/quiz_repository.dart';
import 'package:quizics/models/ModelProvider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:quizics/features/list_pages/data/lessons_id_model.dart';

part 'lessons_list_controller.g.dart';

@riverpod
class LessonsListController extends _$LessonsListController {
  Future<List<Lesson>> _fetchLessonsbySubjectId(String subjectId) async {
    final quizRepository = ref.read(quizRepositoryProvider);
    final lessons = await quizRepository.getLessonsList(subjectId);
    return lessons;
  }

  @override
  FutureOr<List<Lesson>> build() async {
    final subjectId = ref.watch(subjectIdProvider);
    return _fetchLessonsbySubjectId(subjectId);
  }
}