import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:quizics/common/navigation/router/router.dart';
import 'package:quizics/common/utils/colors.dart' as constants;
import 'package:flutter/material.dart';

class QuizicsApp extends StatelessWidget {
  const QuizicsApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp.router(
        routerConfig: router,
        builder: Authenticator.builder(),
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: constants.primaryColor)
                  .copyWith(
            background: const Color(0xff82CFEA),
          ),
        ),
      ),
    );
  }
}