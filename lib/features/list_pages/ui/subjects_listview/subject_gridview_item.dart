import 'package:quizics/common/navigation/router/routes.dart';
import 'package:quizics/features/list_pages/ui/subjects_listview/subject_gridview_item_card.dart';
import 'package:quizics/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubjectGridViewItem extends StatelessWidget {
  const SubjectGridViewItem({
    required this.subject,
    super.key,
  });

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        context.goNamed(
          AppRoute.lessons.name,
          pathParameters: {'id': subject.id},
          extra: subject,
        );
      },
      child: SubjectGridViewItemCard(
        subject: subject,
      ),
    );
  }
}