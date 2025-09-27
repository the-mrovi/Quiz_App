import 'package:coursetesting/models/quiz_questions.dart';

const questions = [
  QuizQuestions("What is the fundamental building block of a Flutter UI?", [
    'Widget',
    'Component',
    'Element',
    'Class',
  ]),
  QuizQuestions('Which widget adds scrollable content?', [
    'ListView',
    'Container',
    'Column',
    'Stack',
  ]),
  QuizQuestions('What is the purpose of setState()?', [
    'Trigger rebuild',
    'Build first time',
    'Initialize state',
    'Navigate screens',
  ]),
  QuizQuestions('How to create a stateless widget?', [
    'extends StatelessWidget',
    'extends StatefulWidget',
    'extends Widget',
    'extends State',
  ]),
  QuizQuestions('What is pubspec.yaml for?', [
    'Manage dependencies',
    'Define UI layout',
    'Write main logic',
    'Configure builds',
  ]),
  QuizQuestions('What does BuildContext represent?', [
    'Widget location',
    'App state',
    'Theme data',
    'Screen size',
  ]),
  QuizQuestions('Best package for simple storage?', [
    'shared_preferences',
    'sqflite',
    'hive',
    'firebase_storage',
  ]),
  QuizQuestions('Purpose of MaterialApp widget?', [
    'Theme & navigation',
    'Add padding',
    'Manage state',
    'Draw shapes',
  ]),
  QuizQuestions('Difference between Column and Row?', [
    'Vertical vs horizontal',
    'Scrollable vs fixed',
    'Two vs many children',
    'No difference',
  ]),
  QuizQuestions('Method called once when state is created?', [
    'initState()',
    'build()',
    'dispose()',
    'setState()',
  ]),
];
