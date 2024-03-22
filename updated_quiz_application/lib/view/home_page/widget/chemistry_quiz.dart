import 'package:flutter/material.dart';
import 'package:updated_quiz_application/controller/chemistry_quiz_controller.dart';
import 'package:updated_quiz_application/core/constant/color_constant.dart';
import 'package:updated_quiz_application/view/resultscreen2/result_screen2.dart';

class ChemistryQuiz extends StatefulWidget {
  const ChemistryQuiz({super.key});

  @override
  State<ChemistryQuiz> createState() => _ChemistryQuizState();
}

class _ChemistryQuizState extends State<ChemistryQuiz> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswersCount = 0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      backgroundColor: ColorConstant.primaryblack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstant.primarygrey),
                child: Text(
                  ChemistryQuizController
                      .flutterQuestions[currentQuestionIndex].question,
                  style: TextStyle(
                      color: ColorConstant.primaryblack, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                  ChemistryQuizController
                        .flutterQuestions[currentQuestionIndex].optionsList.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;

                              if (selectedAnswerIndex ==
                                  ChemistryQuizController
                                      .flutterQuestions[currentQuestionIndex]
                                      .correctAnswerIndex) {
                                rightAnswersCount++;
                              }
                              print(rightAnswersCount);

                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: buildColor(index),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ChemistryQuizController
                                        .flutterQuestions[currentQuestionIndex]
                                        .optionsList[index],
                                    style: TextStyle(
                                        color: ColorConstant.primarywhite,
                                        fontSize: 18),
                                  ),
                                  Icon(
                                    buildIcons(index),
                                    color: buildColor(index),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (currentQuestionIndex <
                      ChemistryQuizController.flutterQuestions.length - 1) {
                    currentQuestionIndex++;
                    selectedAnswerIndex = null;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen2(
                            righAnswerCount: rightAnswersCount,
                          ),
                        ));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.primaryblue),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: ColorConstant.primarywhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        ),
    );
  }






  //build  color

  Color buildColor(int index) {
    if (index ==
            ChemistryQuizController
                .flutterQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      // to show right answr if  selected answer is not null
      return Colors.green;
    } else if (index == selectedAnswerIndex) {
      // to show whether the selected asnwer is right or wrong
      if (selectedAnswerIndex ==
          ChemistryQuizController
              .flutterQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      // to show the default color as grey
      return ColorConstant.primarygrey;
    }
  }

  // ignore: body_might_complete_normally_nullable
  IconData? buildIcons(int index) {
    if (index ==
           ChemistryQuizController
                .flutterQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex !=
          ChemistryQuizController
              .flutterQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}




