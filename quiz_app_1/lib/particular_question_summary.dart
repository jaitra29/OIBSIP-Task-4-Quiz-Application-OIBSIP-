import 'package:flutter/material.dart';
import 'package:quiz_app_1/data/questions.dart';

class QuestionsSummaryPageFile extends StatelessWidget {
  QuestionsSummaryPageFile(this.Data, {Key? key}) : super(key: key);
  final List<Map<String, Object>> Data;

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: Data.map((data) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ((data['particular_question_index'] as int) + 1).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['actual_question'] as String,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          'Your Answer: ${data['user_selected_answers'] as String}',style:const TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Correct Answer: ${data['right_correct_answer'] as String}',style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
