import 'package:quizics/common/utils/colors.dart' as constants;
import 'package:quizics/models/ModelProvider.dart';
import 'package:flutter/material.dart';

class SubjectGridViewItemCard extends StatelessWidget {
  const SubjectGridViewItemCard({
    required this.subject,
    super.key,
  });

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 500,
              alignment: Alignment.center,
              color: const Color(constants.primaryColorDark),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                            'images/amplify.png', //ADD IMAGE
                            fit: BoxFit.contain,
                          ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        subject.description,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 8, 8, 4),
            child: DefaultTextStyle(
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      subject.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}