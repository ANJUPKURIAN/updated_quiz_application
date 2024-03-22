import 'package:flutter/material.dart';
import 'package:updated_quiz_application/core/constant/color_constant.dart';

class ChemistryCard extends StatelessWidget {
  const ChemistryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
              color: ColorConstant.primarywhite.withOpacity(.2),
              image: DecorationImage(
                image: AssetImage("asset/image/lab_image.jpg"),
              ),
              ),
              child: Align(
                      alignment: Alignment.bottomCenter,
                       child: Text(
                        "chemistry \n 5 questions",
                        ),
                      ),
        
                
        ),
      ],
    );
  }
}