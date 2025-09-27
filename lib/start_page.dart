import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Start Screen')),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/flutter_logo.png",
              width: 250,
              fit: BoxFit.cover,
              color: const Color.fromARGB(55, 255, 255, 255),
            ),

            SizedBox(height: 20),

            Text(
              "Learn Flutter in fun way",
              style: GoogleFonts.tradeWinds(
                color: const Color.fromARGB(255, 205, 205, 205),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: startQuiz,
              icon: Icon(
                Icons.arrow_circle_right,
                color: const Color.fromARGB(255, 181, 181, 181),
              ),

              label: Text(
                "next",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
