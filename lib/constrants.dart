import 'package:flutter/material.dart';

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);

const kPrimaryGradient = LinearGradient(colors: [Color.fromARGB(255, 4, 66, 75),Color.fromARGB(255, 4, 96, 77)],
begin: Alignment.centerLeft,
end: Alignment.centerRight);

const kScendoryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;







const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": " The Flutter tooling supports _____ modes while compiling the application",
    "options": ['2', '3', '4', '5'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Flutter is not a language; it is an SDK?",
    "options": ['TRUE', 'FALSE', 'Can be true or false', 'Can not say'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Flutter is mainly optimized for 2D mobile apps that can run on?",
    "options": ['Android', 'ios', 'Both A and B', 'None of the above'],
    "answer_index": 2,
  },
   {
    "id": 6,
    "question": "It is very necessary to learn Dart language for building Flutter application?",
    "options": ['Yes', 'No', 'Can be Yes or No', 'Can not say'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": " A widget that allows us to refresh the screen is called a ____________.",
    "options": ['Stateless widgets', 'Stateful widget', 'Statebuild widget', 'All of the above'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": " The examples of the Stateless widget are?",
    "options": ['Text', 'Row', 'Column', 'All of the above'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": " pubspec.yaml file does not contain?",
    "options": ['Project general settings', 'Project dependencies', 'Project language', ' Project assets'],
    "answer_index": 2,
  },
   {
    "id": 10,
    "question": "Which function is responsible for starting the program?",
    "options": ['runApp()', 'run()', 'flutter()', 'main()'],
    "answer_index": 3,
  },
  {
    "id": 11,
    "question": "How many types of widgets are there in Flutter?",
    "options": ['2', '4', '3', '1'],
    "answer_index": 0,
  },
  {
    "id": 12,
    "question": "Which of the following tests a single widget?",
    "options": ['Integration Tests', 'Unit Tests', 'Interactive Tests', 'Widget Tests'],
    "answer_index": 3,
  },
  {
    "id": 13,
    "question": "WidgetsApp is used for basic navigation",
    "options": ['Yes', 'No', 'Can be Yes or No', 'Can not say'],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question": "Which of the following takes more time to compile and update the app?",
    "options": ['Hot Reload', 'Hot Restart', 'Cold Reload', 'Depends on Compile'],
    "answer_index": 1,
  },
  {
    "id": 15,
    "question": "Which programming language is used to build Flutter applications?",
    "options": ['Java', 'Kotlin', 'GO', 'Dart'],
    "answer_index": 3,
  },
];
