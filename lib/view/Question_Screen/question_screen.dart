import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizapplication/utils/color_constants.dart';
import 'package:quizapplication/view/Result_Screen/result_screen.dart';
import 'package:quizapplication/view/dummy_db.dart';

class QuestionScreen extends StatefulWidget {
  String CategoryName;
  QuestionScreen({super.key, required this.CategoryName});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0;
  int correctAnswer = 0;
  int? selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    String categoryName = widget.CategoryName;
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: ColorConstants.primaryColor,
        title: Text(
          "Quiz App",
          style: TextStyle(
              color: ColorConstants.mainOrange,
              fontWeight: FontWeight.w600,
              fontSize: 24),
        ),
        actions: [
          Text(
            "${questionIndex + 1}/${DummyDb.allQuizData["$categoryName"]!.length}",
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 18),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        DummyDb.allQuizData["$categoryName"]![questionIndex]
                            ["question"],
                        style: TextStyle(
                            color: ColorConstants.mainOrange, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(
                4,
                (optionIndex) => InkWell(
                  onTap: () {
                    if (selectedAnswerIndex == null) {
                      selectedAnswerIndex = null;
                      selectedAnswerIndex = optionIndex;
                      setState(() {});
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: getColor(optionIndex, categoryName))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              DummyDb.allQuizData["$categoryName"]![
                                  questionIndex]['options'][optionIndex],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorConstants.mainWhite),
                            ),
                            Icon(
                              Icons.circle_outlined,
                              color: ColorConstants.mainWhite,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (selectedAnswerIndex != null)
              InkWell(
                onTap: () {
                  selectedAnswerIndex = null;
                  if (questionIndex <
                      DummyDb.allQuizData["$categoryName"]!.length - 1) {
                    questionIndex = questionIndex + 1;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultsScreen(
                            rightanswercount: correctAnswer,
                          ),
                        ));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.mainOrange,
                    ),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Color getColor(int CurrentOptionIndex, String categoryName) {
    if (selectedAnswerIndex == CurrentOptionIndex) {
      if (selectedAnswerIndex ==
          DummyDb.allQuizData["$categoryName"]![questionIndex]['answerIndex']) {
        return ColorConstants.green;
      }
      if (selectedAnswerIndex !=
          DummyDb.allQuizData["$categoryName"]![questionIndex]['answerIndex']) {
        return ColorConstants.red;
      }
    }
    return ColorConstants.mainOrange;
  }
}
