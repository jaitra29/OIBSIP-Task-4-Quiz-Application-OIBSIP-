import 'package:flutter/material.dart';

import 'package:quiz_app_1/answer_button_page.dart';
import 'package:quiz_app_1/data/questions.dart';

class QuestionsScreenPage extends StatefulWidget {
  const QuestionsScreenPage(this.onSelectParticularAnswer, {Key? key})
      : super(key: key);

  final void Function(String answer) onSelectParticularAnswer;

  @override
  State<QuestionsScreenPage> createState() {
    return _QuestionsScreenPageState();
  }
}

class _QuestionsScreenPageState extends State<QuestionsScreenPage> {
  var particularQuestionPageIndex = 0;

  void answertoTheParticularQuestion(String userSelectedAnswer) {
    widget.onSelectParticularAnswer(userSelectedAnswer);
    setState(() {
      particularQuestionPageIndex = particularQuestionPageIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final particularQuestion = questions[particularQuestionPageIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(41),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              particularQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ...particularQuestion.getShuffledAnswers().map((answer) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: AnswerButton(answer, () {
                      answertoTheParticularQuestion(answer);
                    }),
                  ),
                  SizedBox(height: 16)
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
