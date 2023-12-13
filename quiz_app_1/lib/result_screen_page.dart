import 'package:flutter/material.dart';
import 'package:quiz_app_1/data/questions.dart';
import 'package:quiz_app_1/particular_question_summary.dart';


class ResultScreenPageFile extends StatelessWidget {
  const ResultScreenPageFile(this.chosenTheAnswer,this.onRestart, {Key? key});

  final List<String> chosenTheAnswer;
  final void Function() onRestart;

  List<Map<String, Object>> getTheSummarizedData() {
    final List<Map<String, Object>> summaryofData = [];

    for (var x = 0; x < chosenTheAnswer.length; x++) {
      summaryofData.add({
        'particular_question_index': x,
        'actual_question': questions[x].text,
        'right_correct_answer': questions[x].answers[0],
        'user_selected_answers': chosenTheAnswer[x],
      });
    }

    return summaryofData;
  }

  @override
  Widget build(BuildContext context) {
    final summarizedData = getTheSummarizedData();
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectQuestion = summarizedData.where((data) {
      return data['user_selected_answers'] == data['right_correct_answer'];
    }).length;

    // Calculate the score
    final score = (numberOfCorrectQuestion / numberOfTotalQuestions) * 100;

    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Quiz Result',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Darker text color
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'You answered $numberOfCorrectQuestion out of $numberOfTotalQuestions questions correctly!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87, // Darker text color
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Your Score: ${score.toStringAsFixed(2)}%',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87, // Darker text color
                ),
              ),
              const SizedBox(height: 30),
              QuestionsSummaryPageFile(getTheSummarizedData()),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onRestart,
                // Remove the commented onPressed section
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'RESTART JAVA QUIZ!',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


