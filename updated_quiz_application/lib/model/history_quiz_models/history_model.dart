class HistoryModel {
  String question;
  List<String> optionsList;
  int correctAnswerIndex;

  HistoryModel({
    required this.question,
    required this.optionsList,
    required this.correctAnswerIndex,
  });
}