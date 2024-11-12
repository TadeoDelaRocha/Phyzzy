import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  static List<String> answerList = ["a", "b", "c"];
  const AnswerList({super.key});

  void _selectAnswer(String answer, BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var answer in answerList)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {_selectAnswer(answer, context);}, 
                  child: Text(answer)),
              ),      
              ],
    );
  }
}

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/GraphMock.png',
              height: 200,
              scale: 2.5,
              opacity: const AlwaysStoppedAnimation<double>(0.5)),
          const Text(
              "Which of the graphs showcases the behaviour of a constant function?",
              textAlign: TextAlign.center,),
          const AnswerList(),
        ],
      ),
    );
  }
}

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Question"),
      ),
      body: const Question(),
    );
  }
}
