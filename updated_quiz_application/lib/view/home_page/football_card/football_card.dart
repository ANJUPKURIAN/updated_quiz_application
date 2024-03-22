import 'package:flutter/material.dart';
import 'package:updated_quiz_application/core/constant/color_constant.dart';

class FootBallCard extends StatelessWidget {
  const FootBallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
       height: 250,
      width: 150,
      decoration: BoxDecoration(
          color: ColorConstant.primarywhite.withOpacity(.2),
          image: DecorationImage(
              image: NetworkImage(
                "https://images.pexels.com/photos/19436350/pexels-photo-19436350/free-photo-of-close-up-of-a-soccer-ball-in-the-goal.jpeg?auto=compress&cs=tinysrgb&w=600")
              )
              ),

                child: Align(
                  alignment: Alignment.bottomCenter,
                   child: Text(
                    "Sports \n 5 questions",
                    ),
                  ),
    );
  }
}