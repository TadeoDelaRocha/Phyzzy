import 'package:flutter/material.dart';
import 'package:quizics/common/utils/colors.dart' as constants;

class SubjectsListPage extends StatelessWidget {
  const SubjectsListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Subjects',
        ),
        backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: const Center(
        child: Text('Subjects List'),
      ),
    );
  }
}