import 'package:updated_quiz_application/model/history_quiz_models/history_model.dart';



class HistoryQuizController {
  static List<HistoryModel> flutterQuestions = [

  HistoryModel (
      question: "Who was the last viceroy of india?",
      optionsList: ["warren hastings", "lord northbrook", "lord mountbatten", " richard wellesley"],
      correctAnswerIndex: 2,
    ),

    HistoryModel(
      question: "Which country first established trade relations with india?",
      optionsList: [" portuguese", "french", "britishers", "Dutch"],
      correctAnswerIndex: 0,
    ),

   HistoryModel(
      question: "Who established the first printing  press in india?",
      optionsList: [" potuguese", " british", " french", "dutch"],
      correctAnswerIndex: 0,
    ),

    HistoryModel(
      question: "When was the partition of bengal annulled?",
      optionsList: [
        "1911",
        "1909",
        "1912",
        "1910"
      ],
      correctAnswerIndex: 1,
    ),

    HistoryModel(
      question: "When did the first Dutch fleet reach india?",
      optionsList: ["1498", "1510", "1595", "1550"],
      correctAnswerIndex: 2,
    ),
    
    
  ];
}