import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:quizics/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quizzesAPIServiceProvider = Provider<QuizzesAPIService>((ref) {
  final service = QuizzesAPIService();
  return service;
});

class QuizzesAPIService {
  QuizzesAPIService();

  Future<Question?> getQuestionByID(String questionId) async{
    try { 
      final request = ModelQueries.get(
        Question.classType,
        QuestionModelIdentifier(id: questionId)
      );
      final response = await Amplify.API.query(request: request).response;

      final question = response.data!;
      return question;
    } catch (e) {
      safePrint('Error getting question: $e');
      return null;
    }
  }

  Future<Lesson?> getLessonById(String lessonId) async {
    try {
      String query = '''
        query GetLessontWithQuestions(\$lessonId: ID!){
          getSubject(id: \$lessonId) {
            id
            title
            description
            questions {
              items {
                id
                title
                description
              }
            }
          }
        }
      ''';

      final request = GraphQLRequest(
        document: query,
        variables: {"lessonId": lessonId},
        );

      final response = await Amplify.API.query(request:request).response;
      var data = response.data;

      if (data != null) {
        Map<String, dynamic> jsonMap = jsonDecode(data);
        return Lesson.fromJson(jsonMap);
      } else {
        safePrint('No lesson found for the given parameters.');
        return null;
      }

    }
    catch (e) {
      safePrint('Error getting lesson: $e');
      return null;
    }
  }

  Future<Subject?> getSubjectById(String subjectId) async {
    try {
      String query = '''
        query GetSubjectWithLessons(\$subjectId: ID!){
          getSubject(id: \$subjectId) {
            id
            title
            description
            lessons {
              items {
                id
                title
                description
              }
            }
          }
        }
      ''';

      final request = GraphQLRequest(
        document: query,
        variables: {"subjectId": subjectId},
        );

      final response = await Amplify.API.query(request:request).response;
      var data = response.data;

      if (data != null) {
        Map<String, dynamic> jsonMap = jsonDecode(data);
        return Subject.fromJson(jsonMap);
      } else {
        safePrint('No subject found for the given parameters.');
        return null;
      }

    }
    catch (e) {
      safePrint('Error getting subject: $e');
      return null;
    }
  }

  Future<List<Subject>> getSubjectList() async {
    try {
      final request = ModelQueries.list(Subject.classType);
      final response = await Amplify.API.query(request: request).response;
      
      final subjects = response.data?.items;
      if (subjects == null) {
        safePrint('getSubjectList errors: ${response.errors}');
        return const [];
      }
      return subjects
          .map((e) => e as Subject)
          .toList();
    }
    catch (e) {
      safePrint('Error getting subject list: $e');
      return [];
    }
  }
}