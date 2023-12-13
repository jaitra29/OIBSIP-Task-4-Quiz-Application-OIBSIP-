import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerTextofParticularQuestion, this.onPressingThePage, {super.key,});

  final String answerTextofParticularQuestion;
  final void Function() onPressingThePage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressingThePage,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 39,
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answerTextofParticularQuestion,style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    );
  }
}
