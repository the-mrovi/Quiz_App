import 'package:flutter/material.dart';
import 'ans_bottom.dart';
import 'data/Qustions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.OnselectAnswer});

  final void Function(String) OnselectAnswer;


  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.OnselectAnswer(selectedAnswer);
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
              style:GoogleFonts.dmSerifText(fontSize: 28, 
              color: Colors.white54,
              //fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledList().map((ans) {
              return AnswerBotton(
              answerText: ans, 
              OnTap: (){
                answerQuestion(ans);
              }
              );
            }),
          ],
        ),
      ),
    );
  }
}
