import 'package:updated_quiz_application/model/maths_quiz_models/maths_model.dart';



class MathsQuizController {
  static List<MathsModel> flutterQuestions = [

  MathsModel(
      question:" What is 8 divided by 2?",
      optionsList: ["4", "16", "6", "10"],
      correctAnswerIndex: 0,
    ),

   MathsModel(
      question: "What is the sum of 20 and 15?",
      optionsList: [" 35", "27", "51", "39"],
      correctAnswerIndex: 0,
    ),

    MathsModel(
      question: "What is 10 times of 10?",
      optionsList: [" 10","1000", " 20", "100"],
      correctAnswerIndex: 3,
    ),

    MathsModel(
      question: "What is the square root of 81?",
      optionsList: [
        "5",
        "3",
        "9",
        "7"
      ],
      correctAnswerIndex: 2,
    ),

    MathsModel(
      question: "How many sides does a hexagon have?",
      optionsList: ["3", "6", "4", "7"],
      correctAnswerIndex: 1,
    ),
    
    
  ];
}