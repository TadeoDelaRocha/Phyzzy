import 'package:flutter/material.dart';
import 'package:quizics/common/utils/colors.dart' as constants;

class LessonsListPage extends StatelessWidget {
  const LessonsListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lessons',
        ),
        backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: const Center(
        child: Text('Lessons List'),
      ),
    );
  }
}