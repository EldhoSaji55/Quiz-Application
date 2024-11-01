import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapplication/utils/color_constants.dart';
import 'package:quizapplication/view/Home_Screen/homeScreenCardWidget.dart';
import 'package:quizapplication/view/Question_Screen/question_screen.dart';
import 'package:quizapplication/view/dummy_db.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: _appbarmethod(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _rankingandPointsSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText("Let's Play...",
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'arcade',
                              color: ColorConstants.mainOrange),
                          speed: Duration(milliseconds: 200))
                    ],
                    isRepeatingAnimation: true,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.7),
                itemCount: DummyDb.categories.length,
                itemBuilder: (context, index) {
                  final category = DummyDb.categories.values.elementAt(index);
                  final iconData =
                      category[0] as IconData; // Extract IconData correctly
                  final questionCount = category[1] as int;
                  return InkWell(
                    child: homeScreenCardWidget(
                        title: DummyDb.categories.keys.elementAt(index),
                        questionCount: questionCount,
                        icon: iconData),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionScreen(
                              CategoryName:
                                  DummyDb.categories.keys.elementAt(index),
                            ),
                          ));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _rankingandPointsSection() {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 80,
            width: 350,
            decoration: BoxDecoration(
                color: ColorConstants.secondaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.trophy,
                      color: ColorConstants.golden,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Ranking",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'arcade',
                              color: ColorConstants.mainOrange),
                        ),
                        Text(
                          "348",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'arcade',
                              color: ColorConstants.mainOrange),
                        ),
                      ],
                    )
                  ],
                ),
                VerticalDivider(),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.coins,
                      color: ColorConstants.golden,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Points",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'arcade',
                              color: ColorConstants.mainOrange),
                        ),
                        Text(
                          "1209",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'arcade',
                              color: ColorConstants.mainOrange),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  AppBar _appbarmethod() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: ColorConstants.primaryColor,
      title: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, John",
              style: TextStyle(
                  fontFamily: 'arcade',
                  fontSize: 18,
                  color: ColorConstants.mainOrange,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Let's make this day productive",
              style: TextStyle(
                color: ColorConstants.mainOrange,
                fontSize: 12,
                fontFamily: 'arcade',
              ),
            )
          ],
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/8721319/pexels-photo-8721319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
