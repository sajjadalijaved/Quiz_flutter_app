import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';


import 'componants/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
    

      appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.transparent,
          elevation: 0,
      actions: [
        TextButton(onPressed: controller.nextQuestion,
         child: const Text("skip",style: TextStyle(color: Colors.white),))
      ],
    ),
    body: const Body(),);
  }
}

