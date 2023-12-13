import 'package:flutter/material.dart';

class StartScreenPageFile extends StatelessWidget {
  const StartScreenPageFile(this.beginTheQuiz, {super.key});

  final void Function() beginTheQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Java in a Productive Way',
            style: TextStyle(
              color:Colors.white,
              fontSize: 27,
            ),
          ),
          const SizedBox(height: 32),
          OutlinedButton(
            onPressed: beginTheQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text('BEGIN QUIZ'),
          )
        ],
      ),
    );
  }
}
