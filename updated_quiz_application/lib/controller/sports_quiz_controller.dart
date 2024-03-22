
import 'package:updated_quiz_application/model/sports_quiz_models/sports_model.dart';



class SportsQuizController {
  static List<SportsModel> flutterQuestions = [

  SportsModel  (
      question: "Who won the 10th italian open title in 2021?",
      optionsList: ["Novack Djokovic", "Rafael Nadal", "Dominic Thiem", "Stefanos  Tsitsipas"],
      correctAnswerIndex: 1,
    ),

    SportsModel(
      question: "India won Thomas Cup on May 15,2022, by defeating whom?",
      optionsList: [" Indonesia", "Malasia", "China", "Denmark"],
      correctAnswerIndex: 0,
    ),

    SportsModel(
      question: "Name the 1st woman cricketer to appear at 6  cricket world cups?",
      optionsList: [" Mithali Raj", " Smriti Mandhana", " Harmanpreet Kaur", "Jhulan gouwami"],
      correctAnswerIndex: 0,
    ),

    SportsModel(
      question: "Ashwini ponnappa is associated with which game?",
      optionsList: [
        "Vollyball",
        "Badminton",
        "Tennis",
        "Football"
      ],
      correctAnswerIndex: 1,
    ),

    SportsModel(
      question: "Name the first cricketer to hit six sixes in an over in One Day Internationals(50-50) cricket?",
      optionsList: ["Yuvraj singh", "Herschelle Gibs", "Ravi Shastri", "Leo Carter"],
      correctAnswerIndex: 1,
    ),
    
    
  ];
}