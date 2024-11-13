import 'package:flutter/material.dart';
import 'package:quizics/common/utils/colors.dart' as constants;

class QuestionPage extends StatelessWidget {
  const QuestionPage({
    required this.lessonId,
    super.key,
  });

  final String lessonId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Questions',
        ),
        backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: const Center(
        child: Text('Questions List'),
      ),
    );
  }
}