import 'dart:io';

// Question class to store the question and answer options
class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}

// Main function where the quiz happens
void main() {
  // List of questions
  List<Question> questions = [
    Question('What is the capital of France?',
        ['Berlin', 'Madrid', 'Paris', 'Rome'], 2),
    Question('What is 5 + 3?', ['5', '6', '7', '8'], 3),
    Question('Which programming language is this quiz written in?',
        ['Java', 'C++', 'Dart', 'Python'], 2),
  ];

  int score = 0;

  // Loop through each question
  for (int i = 0; i < questions.length; i++) {
    print('Q${i + 1}: ${questions[i].questionText}');
    for (int j = 0; j < questions[i].options.length; j++) {
      print('${j + 1}. ${questions[i].options[j]}');
    }

    print('Please enter your answer (1-4):');
    int answer = int.parse(stdin.readLineSync()!);

    // Check if the answer is correct
    if (answer - 1 == questions[i].correctAnswerIndex) {
      print('Correct!\n');
      score++;
    } else {
      print('Incorrect.\n');
    }
  }

  // Final score
  print('Quiz finished! Your score is: $score/${questions.length}');
}
