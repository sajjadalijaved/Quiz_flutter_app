// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constrants.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        WebsafeSvg.asset("assets/icons/bg.svg",fit: BoxFit.cover),
        Column(children: [
          const Spacer(flex: 3,),
          Text("Score",style: Theme.of(context).textTheme.headline3!.copyWith(color: kSecondaryColor),),
          const Spacer(),
          Text("${controller.numOfCorrectAns * 10}/${controller.questions.length * 10}",style: Theme.of(context).textTheme.headline4!.copyWith(color: kSecondaryColor),),

          Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,
          ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 100,),
                 MaterialButton(
                  elevation: 2,
                  color: const Color.fromARGB(255, 3, 75, 5),
                  onPressed: () => Get.to(const WelcomeScreen()),
                 child: const Text("Try Again"),
                 ),
                 const SizedBox(width: 50,),
                  MaterialButton(
                    elevation: 2,
                     color: const Color.fromARGB(255, 3, 75, 5),
                    onPressed: () => Get.to(const WelcomeScreen()),
                 child: const Text("Next Quiz"),
                 ),
          ],),),
          const Spacer(flex: 3,),
        ],)
      ],),
    );
  }
}