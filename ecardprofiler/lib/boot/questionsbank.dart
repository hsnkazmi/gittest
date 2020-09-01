class Qbank {
  List<questionType> _listquestions = [
    questionType('name is shah', true),
    questionType('app in flutter', true),
    questionType('uses future', false),
  ];
  int qnumber = 0;
  bool showdiolog = false;
  String nextQuestion() => _listquestions[qnumber].question;
  bool nextAnswer() => _listquestions[qnumber].answer;
  setQnumber() {
    if (qnumber < _listquestions.length - 1) {
      qnumber++;
    } else {
      showdiolog = true;
      qnumber = 0;
    }
  }
}

class questionType {
  String question;
  bool answer;
  questionType(this.question, this.answer);
}
