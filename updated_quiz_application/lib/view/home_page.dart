import 'package:flutter/material.dart';
import 'package:updated_quiz_application/core/constant/color_constant.dart';
import 'package:updated_quiz_application/view/home_page/widget/chemistry_quiz.dart';
import 'package:updated_quiz_application/view/home_page/widget/history_quiz.dart';
import 'package:updated_quiz_application/view/home_page/widget/maths_quiz.dart';
import 'package:updated_quiz_application/view/home_page/widget/sports_quiz.dart';
//import 'package:updated_quiz_application/lib/core/constant/color_constant';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
     
     child: Scaffold(
       backgroundColor: Colors.black,
         appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
             title: const Text(
            " Hi, Aishu \n Lets make this day more productive",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              wordSpacing: 1,
         ),
          
              ),
              actions: [
               CircleAvatar(
              backgroundImage: AssetImage("asset/image/girl_image.jpg"),
               ),
              ],
         ),
         
         body: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
           child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      " choose a catagory",
                      style:TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      ),
                  ),

                      SizedBox(
                        height: 20,
                      ),
               
               // 1--- row with 2 column
               Row(
                children: [
                  // 1.column -- container with image
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                         height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                         color: ColorConstant.primarywhite.withOpacity(.2),
                        image: DecorationImage(
                        image: AssetImage("asset/image/football_image.jpg",
                        ),
                       ),
                        ),
                        ),
                         onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=> SportsQuiz()));
                        },
                      

                      ),
           
             Container(
                 child: Text(
                      "Sports \n 5 questions",
                      style: TextStyle(
                        color: ColorConstant.primarywhite,
                        fontSize: 20,
                      ),
                      ),
                      ),
                    ],
                  ),


                 // 2.column
                 // for image
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                        height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                         color: ColorConstant.primarywhite.withOpacity(.2),
                        image: DecorationImage(
                        image: AssetImage(
                          "asset/image/lab_image.jpg"),
                            ),
                          ),
                        ),

                              onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=> ChemistryQuiz()));
                        },
                      ),

                 // for text
                      Container(
                         child: Text(
                      "Chemistry \n 5 questions",
                      style: TextStyle(
                        color: ColorConstant.primarywhite,
                        fontSize: 20,
                      ),
                      ),
                      ),
                    ],
                  ),
                ],
               ),
                      
                  SizedBox(
                  height: 20,
                      ),

                // 2. row with 2 column

                 Row(
                children: [
                  // 1.column -- container with image
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                         height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                         color: ColorConstant.primarywhite.withOpacity(.2),
                        image: DecorationImage(
                        image: AssetImage(
                          "asset/image/maths_image.jpg"),
                              ),
                           ),
                         ),

                          onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=> MathsQuiz()));
                        },
                      ),
            // with text

             Container(
                 child: Text(
                      "Maths \n 5 questions",
                      style: TextStyle(
                        color: ColorConstant.primarywhite,
                        fontSize: 20,
                      ),
                      ),
                      ),
                    ],
                  ),

                   // 2.column
                 // for image
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                        height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                         color: ColorConstant.primarywhite.withOpacity(.2),
                        image: DecorationImage(
                        image: AssetImage(
                          "asset/image/history_image.jpg"),
                             ),
                           ),
                         ),
                          onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=> HistoryQuiz()));
                        },
                      ),

                 // for text
                      Container(
                         child: Text(
                      "History \n 5 questions",
                      style: TextStyle(
                        color: ColorConstant.primarywhite,
                        fontSize: 20,
                      ),
                      ),
                      ),
                      ],
               ),
                ],
               ),
             
         ],
           ),
                    
       ),
         ),
        
  );
    
  }
}