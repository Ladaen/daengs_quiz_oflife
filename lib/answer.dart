import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final int score;

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    textStyle: const TextStyle(color: Colors.white),
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );


  // ignore: use_key_in_widget_constructors
  Answer(this.selectHandler, this.answerText, this.score);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: raisedButtonStyle,
          onPressed: (){ selectHandler(score);},
          child: Text(answerText, style: const TextStyle(
            color: Colors.white
          ),),
        )    
      );
  }
}