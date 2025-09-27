import 'package:flutter/material.dart';

class AnswerBotton extends StatelessWidget {
  const AnswerBotton({
    super.key,
    required this.answerText,
    required this.OnTap,
  });

  final String answerText;
  final void Function() OnTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: OnTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(25, 1, 1, 100),
        foregroundColor: const Color.fromARGB(120, 255, 255, 255),
        shadowColor: Colors.black87
      ),
      child: Text(
        textAlign: TextAlign.center,
        answerText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
