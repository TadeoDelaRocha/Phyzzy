import 'package:quizics/features/list_pages/service/quizzes_api_service.dart';
import 'package:quizics/models/Question.dart';
import 'package:quizics/models/Lesson.dart';
import 'package:quizics/models/Subject.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizRepositoryProvider = Provider<QuizRepository>((ref) {
  final quizzesAPIService = ref.read(quizzesAPIServiceProvider);
  return QuizRepository(quizzesAPIService);
});

class QuizRepository {
  QuizRepository(this.quizzesAPIService);

  final QuizzesAPIService quizzesAPIService;

  Future<Question?> getQuestionByID(String questionId) {
    return quizzesAPIService.getQuestionByID(questionId);
  }

  Future<Lesson?> getLessonById(String lessonId){
    return quizzesAPIService.getLessonById(lessonId);
  }

  Future<List<Lesson>> getLessonsList(String subjectId){
    return quizzesAPIService.getLessonsList(subjectId);
  }

  Future<Subject?> getSubjectById(String subjectId){
    return quizzesAPIService.getSubjectById(subjectId);
  }

  Future<List<Subject>> getSubjectList() async {
    return quizzesAPIService.getSubjectList();
  }
}