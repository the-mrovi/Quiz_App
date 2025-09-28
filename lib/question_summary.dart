import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final isCorrect = data['user_answer'] == data['correct_answer'];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                // Text(
                //   ((data['question_index'] as int) + 1).toString(),
                //   style: TextStyle(color: const Color.fromARGB(255, 214, 205, 239), fontSize: 18),
                // ),
                // SizedBox(width: 15,),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: isCorrect ? const Color.fromARGB(255, 160, 148, 17) : Colors.red,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(
                      color: const Color.fromARGB(255, 214, 205, 239),
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        (data['question'] as String),
                        style: GoogleFonts.dmSerifText(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 206, 130, 130),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        ('your answer = ${data['user_answer'] as String}'),
                        style: GoogleFonts.dmSerifText(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 61, 188, 97),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 3),
                      Text(
                        (' correct answer = ${data['correct_answer'] as String}'),
                        style: GoogleFonts.dmSerifText(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 29, 135, 192),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20,)
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
