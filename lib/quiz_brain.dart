import 'package:quizzler/question.dart';
import 'dart:math';


class QuizBrain {

  int questionBankLength;
  final randomQuestionNumber  = new Random();

  List<Question> questionBank = [
    Question(q:'You can lead a cow down stairs but not up stairs.', a:true),
    Question(q:'Approximately one quarter of human bones are in the feet.' , a:true),
    Question(q:'A slug\'s blood is green.', a:true),

  ];


  QuizBrain () {

    questionBankLength = questionBank.length;
  }



  Question getNextQuestion () {
    var questionNumber = randomQuestionNumber.nextInt(questionBankLength + 1 );
    return questionBank[questionNumber % questionBankLength];
  }





}