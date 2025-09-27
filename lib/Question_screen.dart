import 'package:flutter/material.dart';
import 'ans_bottom.dart';
import 'data/Qustions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(45),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questions,
              style: TextStyle(fontSize: 26,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(135, 204, 200, 200)
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledList().map((ans) {
              return AnswerBotton(answerText: ans, OnTap: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
