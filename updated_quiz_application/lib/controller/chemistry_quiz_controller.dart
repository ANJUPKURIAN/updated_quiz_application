
import 'package:updated_quiz_application/model/sports_quiz_models/chemistry_quiz_models/chemistry_model.dart';


class ChemistryQuizController {
  static List<ChemistryModel> flutterQuestions = [

  ChemistryModel (
      question: "The most electronegative element among the following is?",
      optionsList: ["sodium", "bromine", "fluorine", "oxygen"],
      correctAnswerIndex: 2,
    ),

    ChemistryModel(
      question: "The most commonly used bleaching agent is?",
      optionsList: [" alcohol", "carbon dioxide", "chlorine", "sodium chlorine"],
      correctAnswerIndex: 2,
    ),

    ChemistryModel(
      question: "The most abundant rare gas in the atmosphere?",
      optionsList: [" He", " Ne", " Ar", "Xe"],
      correctAnswerIndex: 2,
    ),

    ChemistryModel(
      question: "The ore which is found in abundance in india is?",
      optionsList: [
        "monazite",
        "fluorspar",
        "bauxite",
        "magnetite"
      ],
      correctAnswerIndex: 0,
    ),

    ChemistryModel(
      question: "The most malleable metal is ?",
      optionsList: ["platinum", "silver", "iron", "gold"],
      correctAnswerIndex: 3,
    ),
    
    
  ];
}