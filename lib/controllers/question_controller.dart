// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constrants.dart';
import 'package:quiz_app/models/Questions.dart';

import '../screens/scores/scrore_screen.dart';

class QuestionController extends GetxController with SingleGetTickerProviderMixin{

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation; 

  late PageController _pageController;
  PageController get pageController => this._pageController;


  final List<Question> _questions = sample_data.map((question) => Question(
id: question["id"],
question: question["question"],
options: question["options"],
answer: question["answer_index"]
  )).toList();

List<Question> get questions => this._questions; 


bool _isAnswered = false;
bool get isAnswered => this._isAnswered;

late int _correctAns;
int get correctAns => this._correctAns;

late int _selectAns;
int get selectAns => this._selectAns;

final RxInt _questionNumber = 1.obs;
RxInt get questionNumber => this._questionNumber;

int _numOfCorrectAns = 0;
int get numOfCorrectAns => this._numOfCorrectAns;


  @override
  void onInit() {
    _animationController = AnimationController(vsync: this,duration: const Duration(seconds: 60));
    _animation = Tween<double>(begin: 0,end: 1).animate(_animationController)..addListener(() {
      update();
    });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question,int selectedIndex){
    _isAnswered = true;
    _correctAns = question.answer;
    _selectAns = selectedIndex;

    if(_correctAns == _selectAns) _numOfCorrectAns++;

    _animationController.stop();
    update();

    Future.delayed(const Duration(seconds: 3),(){
      nextQuestion();
    });

    _animationController.reset();

    _animationController.forward();

  }

    void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      
      _animationController.reset();

      
      _animationController.forward().whenComplete(nextQuestion);
    }else {
      // Get package provide us simple way to navigate another page
      Get.to(const ScoreScreen());
    }
  }

  void updateQuestionNumber(int index){
    _questionNumber.value  = index + 1;
  }
}