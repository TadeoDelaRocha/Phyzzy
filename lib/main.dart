import 'package:flutter/material.dart';
import 'package:quizics/lessonListPage.dart';
import 'package:quizics/questionPage.dart';
import 'package:quizics/subjectListPage.dart';
import 'package:quizics/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Quizics',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 187, 2, 79)),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/Subjects': (context) => const SubjectListPage(),
        '/Lessons' : (context) => const LessonListPage(),
        '/Question': (context) => const QuestionPage(),
      }
    );
  }
}
