import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(25, 1, 1, 100),
        foregroundColor: const Color.fromARGB(120, 255, 255, 255),
        shadowColor: Colors.black87,
      ),
      child: Text(
        textAlign: TextAlign.center,
        answerText,
        style: GoogleFonts.orbitron(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white54,
        ),
      ),
    );
  }
}
