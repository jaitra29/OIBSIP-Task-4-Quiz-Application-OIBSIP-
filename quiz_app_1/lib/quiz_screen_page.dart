import 'package:flutter/material.dart';
import 'package:quiz_app_1/data/questions.dart';
import 'package:quiz_app_1/questions_screen.dart';
import 'package:quiz_app_1/result_screen_page.dart';

import 'package:quiz_app_1/start_screen.dart';

class QuizScreenPageFile extends StatefulWidget {
  const QuizScreenPageFile({Key? key}) : super(key: key);

  @override
  State<QuizScreenPageFile> createState() {
    return _QuizScreenPageFileState();
  }
}

class _QuizScreenPageFileState extends State<QuizScreenPageFile> {
  late Widget particularScreenPage;
  List<String> selectedAnswers = [];


  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        particularScreenPage =  ResultScreenPageFile(selectedAnswers,onRestart);
      });
    }
  }

  void restarttheQuiz(){
    setState(() {
      selectedAnswers = [];
      particularScreenPage = QuestionsScreenPage(chooseAnswer);
    });
  }

  @override
  void initState() {
    super.initState();

    particularScreenPage = StartScreenPageFile(turnPageonebyone);
  }

  void turnPageonebyone() {
    setState(() {
      particularScreenPage =  QuestionsScreenPage(chooseAnswer);
    });
  }

  void onRestart(){
    setState(() {
      particularScreenPage = ResultScreenPageFile(selectedAnswers, restarttheQuiz);
    });
  }

  // void EndOfQuiz(){
  //   setState(() {
  //     particularScreenPage =  ResultScreenPageFile(s);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 245, 84, 137),
                Color.fromARGB(255, 232, 119, 157),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: particularScreenPage,
        ),
      ),
    );
  }
}
