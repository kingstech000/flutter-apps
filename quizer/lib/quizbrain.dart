// ignore_for_file: non_constant_identifier_names, body_might_complete_normally_nullable

import 'question.dart';

class Quizbrain {
  int _question_number = 0;
  final List<Question> _Questionbank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called "Backrub".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  bool checkQuestionNumber() {
    if (_question_number < _Questionbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void changeQuestion() {
    if (checkQuestionNumber()) {
      _question_number++;
    }
  }

  String getQuestiontext() {
    return _Questionbank[_question_number].questiontext;
  }

  bool? getQuestionAnswer() {
    return _Questionbank[_question_number].questionAnswer;
  }

  void reset() {
    _question_number = 0;
  }

  bool isfinished() {
    if (_question_number >= _Questionbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
