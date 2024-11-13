import 'package:flutter/material.dart';
import 'package:quizics/common/ui/pageListArguments.dart' show PageListArguments;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateTo(String route, BuildContext context){
    Navigator.pushNamed(
      context, 
      route,
      arguments: PageListArguments("Subjects"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body:  Column(
        children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {_navigateTo("/Subjects", context);}, 
                  child: const Text("Subjects")),
              ),      
              ],
      ),
    );
  }
}