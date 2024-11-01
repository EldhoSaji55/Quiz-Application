import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapplication/utils/color_constants.dart';

class homeScreenCardWidget extends StatelessWidget {
  String title;
  num questionCount;
  final IconData icon;
  homeScreenCardWidget({
    required this.title,
    required this.questionCount,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 170,
          color: Colors.transparent,
        ),
        Positioned(
          top: 30,
          child: Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.secondaryColor),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainOrange,
                        fontFamily: "arcade"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    questionCount.toString(),
                    style: TextStyle(
                        fontSize: 14, color: ColorConstants.mainOrange),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: FaIcon(
            icon,
            size: 80,
            color: ColorConstants.mainOrange,
          ),
        )
      ],
    );
  }
}
