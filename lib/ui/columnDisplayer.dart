export 'package:quizics/ui/columnDisplayer.dart' show ColumnDisplayer;
import 'package:flutter/material.dart';
import 'package:quizics/ui/pageListArguments.dart' show PageListArguments;

class ColumnDisplayer extends StatelessWidget{
  final List<String> titleList;
  final String route;
  final String subRoute;
  const ColumnDisplayer({super.key, required this.titleList, required this.route, required this.subRoute});

  void _navigateTo(String subjectTitle, BuildContext context){
    Navigator.pushNamed(
      context, 
      subRoute,
      arguments: PageListArguments(subjectTitle));
  }

  @override 
  Widget build(BuildContext context) {
      return Column(
        children: [
          for (var subjectTitle in titleList)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {_navigateTo(subjectTitle, context);}, 
                  child: Text(subjectTitle)),
              ),      
              ],
      );
  }
}