import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';

import 'package:quiz_app/screens/quiz/componants/option.dart';

import '../../../constrants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key, required this.question,
  });
  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Container(
    
    margin: const EdgeInsets.only(bottom: 40,left: 15,right: 15),
    padding: const EdgeInsets.all(kDefaultPadding),
    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
    child: Column(children: [
      Text(question.question,style: Theme.of(context).textTheme.headline6!.copyWith(color: kBlackColor),),
      const SizedBox(height: kDefaultPadding / 2),
    ...List.generate(question.options.length,
     (index) => Option(text: question.options[index],
      index: index, 
      press: ()=> controller.checkAns(question, index)))
    ],),
    );
  }
}
