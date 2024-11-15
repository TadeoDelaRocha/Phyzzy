import 'package:quizics/common/navigation/router/routes.dart';
import 'package:quizics/features/list_pages/ui/subjects_list/subjects_list_page.dart';
import 'package:quizics/features/list_pages/ui/lessons_list/lessons_list_page.dart';
import 'package:quizics/features/list_pages/ui/question/question_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const SubjectsListPage(),
    ),
    GoRoute(
      path: '/subject',
      name: AppRoute.lessons.name,
      builder: (context, state){
        final String subjectId = state.pathParameters['subjectId']!;
        return LessonsListPage(subjectId: subjectId);
      },
    ),
    GoRoute(
      path: '/question',
      name: AppRoute.question.name,
      builder: (context, state){
        final String lessonId = state.pathParameters['lessonId']!;
        return QuestionPage(lessonId: lessonId); 
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);