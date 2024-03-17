import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final Function resetHandler;

  // ignore: use_key_in_widget_constructors
  const Result({
    required this.resultScore,
    required this.resetHandler,
  });

  String get resultPhrase{
    String resultText;

    if(resultScore == 1){
      resultText = "You ded";
    } else if(resultScore == 2){
      resultText = "You still alive, but just lost lately";
    } else if(resultScore == 3){
      resultText = "You still alive, somehow"; 
    } else if(resultScore == 4){
      resultText = "You still alive, but dead socially";
    } else if(resultScore == 5){
      resultText = "You still alive, but no one love you";
    } else {
      resultText = "You did it, you got your life physically and mentally";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () => {resetHandler()}, 
            child:const Text("Restart Quiz!"))
        ],
      )
    );
  }
}