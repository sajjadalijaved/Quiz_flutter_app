import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import '../../../constrants.dart';

class Option extends StatelessWidget {
  const Option({
    super.key, required this.text, required this.index, required this.press,
  });
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qncontroller) {
      Color getRightColor(){
        if (qncontroller.isAnswered) {
          if (index == qncontroller.correctAns) {
            return kGreenColor;
            
          }else if(index == qncontroller.selectAns && qncontroller.selectAns != qncontroller.correctAns){
            return kRedColor;
          }
           
        }
       return kGrayColor;
      }

      IconData getRightIcon(){
        return getRightColor() == kRedColor ? Icons.close : Icons.done; 
      }
    
      return InkWell(
        onTap: press,
        child: Container(
          margin: const EdgeInsets.only(top: kDefaultPadding),
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(border: Border.all(color: getRightColor()),
          borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("${index + 1}: $text",style: TextStyle(color: getRightColor(),fontSize: 16),),
            Container(height: 23,
            width: 23,
            decoration: BoxDecoration(
              color: getRightColor() == kGrayColor ? Colors.transparent: getRightColor() ,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: getRightColor(),
              ),
              ),
              child: getRightColor() == kGrayColor ? null : Icon(getRightIcon(),size: 16,),
              ),
          ],),
        ),
      );
   } );
  }
}
