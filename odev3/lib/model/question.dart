class Question {
  final String question;
  final List<Answer> answers;

  const Question({
    required this.question,
    required this.answers,
  });
}

class Answer {
  final String answer;

  Answer({required this.answer});
}
