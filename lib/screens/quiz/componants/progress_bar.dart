import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constrants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF3F4768),width: 3),
        borderRadius: BorderRadius.circular(50)
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          
        
        return Stack(children: [
          LayoutBuilder(builder: (context, Constraints) => Container(
            width:Constraints.maxWidth * controller.animation.value,
            decoration: BoxDecoration(
              gradient: kScendoryGradient,
              borderRadius: BorderRadius.circular(50)
            ),
          ),),
          Positioned.fill(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${(controller.animation.value * 60).round()}   seconds"),
                WebsafeSvg.asset("assets/icons/clock.svg")
              ],
            ),
          ))
        ],);
  }),
    );
  }
}