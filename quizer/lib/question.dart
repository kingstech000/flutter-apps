class Question {
  String questiontext = '';
  bool? questionAnswer;

  Question(String q, bool? a) {
    questiontext = q;
    questionAnswer = a;
  }
  //Question(this.questiontext, this.questionAnswer);  This does the same thing as the code above
}
