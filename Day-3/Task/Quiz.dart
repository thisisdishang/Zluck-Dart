import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}

void main() {
  int score = 0;

  // list of questions class object
  List<Question> questions = [
    Question('What is the name of Arjuna\'s bow?',
        ['Vijaya', 'Mahendra', 'Gandiva', 'Sharanga'], 2),
    Question('Name the astra got by arjuna from lord shiva?',
        ['Bramhastra', 'Pashupatastra', 'Narayanastra', 'Maheshwara Astra'], 0),
    Question('Which programming language is use in flutter?',
        ['Java', 'C++', 'Dart', 'Python'], 2),
    Question('What is return type of constructor?',
        ['void', 'int', 'string', 'nothing'], 3),
    Question('What is output of \"int a=10; a=a++*a--\"',
        ['100', '110', '90', 'Error'], 1)
  ];

  // outer loop for questions
  for (int i = 0; i < questions.length; i++) {
    print('Q${i + 1}: ${questions[i].questionText}');

    // inner loop for options
    for (int j = 0; j < questions[i].options.length; j++) {
      print('${j + 1}. ${questions[i].options[j]}');
    }

    // take input from console
    print('Please enter your answer (1-4):');
    int answer = int.parse(stdin.readLineSync()!);

    // check the answer with correct index
    if (answer - 1 == questions[i].correctAnswerIndex) {
      score++;
    } else {
      print('Incorrect.\n');
    }
  }

  print('Your score is: $score/${questions.length}');
}
