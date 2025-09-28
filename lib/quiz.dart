import 'package:coursetesting/data/Qustions.dart';
import 'package:coursetesting/start_page.dart';
import 'package:flutter/material.dart';
import 'Question_screen.dart';
import 'result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<String> selectedAnswer = [];

  var ActiveScreen = 'Start-Screen'; 
  

  void switchScreen() {
    setState(() {
      ActiveScreen = 'Question-Screen';
    });
  }


  void chooseAnswer (String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length){
      setState(() {
        ActiveScreen = 'Result-Screen';
      });
    }
  }

  void restartQuiz (){
    setState(() {
      selectedAnswer = [];
      ActiveScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget =  StartScreen(switchScreen);

    if(ActiveScreen == 'Question-Screen'){
      screenWidget = Questions(
      OnselectAnswer: chooseAnswer,
      );
    }

    if(ActiveScreen == 'Result-Screen'){
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
        );
    }
 
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 64, 34, 115),
                const Color.fromARGB(255, 106, 31, 144),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
