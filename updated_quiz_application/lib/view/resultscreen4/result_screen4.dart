import 'package:flutter/material.dart';
import 'package:updated_quiz_application/controller/Sports_Quiz_controller.dart';

class ResultScreen4 extends StatelessWidget {
  const ResultScreen4({super.key, required this.righAnswerCount});
  final int righAnswerCount;

  @override
  Widget build(BuildContext context) {
    final percentage =
        (righAnswerCount / SportsQuizController.flutterQuestions.length) * 100;
    return Scaffold(
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Text("Your score is ${percentage.round()} % "),
             Text("correct answer :  ${( righAnswerCount)} "),
              Text("wrong answer : ${( SportsQuizController.flutterQuestions.length - righAnswerCount)} "),
              Text("skipped questions :"),


              Center(
              child:ElevatedButton(
                onPressed: (){
                  Navigator.popUntil(context, (route) => route.isFirst);
                }, 
               child: Text("restart"),
               ) ,
              ),
          ],
          
          
        ),
        
      ),
    );
  }
}