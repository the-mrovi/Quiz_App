import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        (data['question'] as String),
                        style: GoogleFonts.dmSerifText(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        (data['user_answer'] as String),
                        style: GoogleFonts.dmSerifText(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(77, 136, 59, 59),
                        ),
                      ),
                      Text(
                        (data['correct_answer'] as String),
                        style: GoogleFonts.dmSerifText(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(77, 37, 98, 131),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
