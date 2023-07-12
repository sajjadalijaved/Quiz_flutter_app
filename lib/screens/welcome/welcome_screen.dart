// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constrants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        WebsafeSvg.asset("assets/icons/bg.svg",fit: BoxFit.cover),
        SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2,),
            Text("Let's Play Quiz",
            style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold),),
            const Text("Please Enter your information here",style: TextStyle(fontSize: 14),),
            const Spacer(),
            TextField(decoration: InputDecoration(filled: true,
            fillColor: const Color(0xFF1C2341),
            labelText: "User Name",
            hintText: "Please enter your full name here",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Get.to(const QuizScreen()),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
              padding: const EdgeInsets.all(kDefaultPadding * 0.75),
              decoration: const BoxDecoration(gradient: kPrimaryGradient,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: const Text("Let's Play Quiz",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              ),
            ),
            const Spacer(flex: 2,)
          ],),
        ))
      ],),
    );
  }
}