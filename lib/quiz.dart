import 'package:coursetesting/start_page.dart';
import 'package:flutter/material.dart';
import 'Question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var ActiveScreen = 'Start-Screen';

  // @override
  // void initState() {
  //   ActiveScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      ActiveScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget =  StartScreen(switchScreen);

    if(ActiveScreen == 'Question-Screen'){
      screenWidget =const Questions();
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
