import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:quizics/features/list_pages/data/quiz_repository.dart';
import 'package:quizics/models/ModelProvider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_list_controller.g.dart';

@riverpod
class QuizListController extends _$QuizListController {
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