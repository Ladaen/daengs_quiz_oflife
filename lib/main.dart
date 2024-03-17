import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Are you still breathing?',
      'answers': [
        {'text': 'yes', 'score': 0},
        {'text': 'no', 'score': 1},
      ]
    },
    {
      'questionText': 'Do you still have dream to be achieved?',
      'answers': [
        {'text': 'yes', 'score': 0},
        {'text': 'no', 'score': 2},
      ]
    },
    {
      'questionText': 'Do you enjoy your life lately?',
      'answers': [
        {'text': 'yes', 'score': 0},
        {'text': 'no', 'score': 3},
      ]
    },
    {
      'questionText': 'You got life other than works?',
      'answers': [
        {'text': 'yes', 'score': 0},
        {'text': 'no', 'score': 4},
      ]
    },
    {
      'questionText': 'Have you been loved lately?',
      'answers': [
        {'text': 'yes', 'score': 0},
        {'text': 'no', 'score': 5},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Daeng's Quiz App",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Life checking quiz'),
          ),
          body: _questionIndex < _questions.length && _totalScore <= 0
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
        ));
  }
}
