import 'dart:async';

import 'package:quizics/features/list_pages/data/quiz_repository.dart';
import 'package:quizics/models/ModelProvider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subjects_list_controller.g.dart';

@riverpod
class SubjectsListController extends _$SubjectsListController {
  Future<List<Subject>> _fetchSubjects() async {
    final quizRepository = ref.read(quizRepositoryProvider);
    final subjects = await quizRepository.getSubjectList();
    return subjects;
  }

  @override
  FutureOr<List<Subject>> build() async {
    return _fetchSubjects();
  }
}