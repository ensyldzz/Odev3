import 'package:flutter/material.dart';
import 'package:odev3/data/question_data.dart';
import 'package:odev3/model/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestion();
  int currentQuestionIndex = 0;
  List<String> selectedAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
        child: Column(children: [
          const SizedBox(height: 80),
          const Text(
            "QUIZ",
            style: TextStyle(fontSize: 25),
          ),
          _questionWidget(),
          _answerList()
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      children: [
        const SizedBox(height: 100),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(color: Colors.blue),
          child: Text(questionList[currentQuestionIndex].question),
        ),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answers
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: ElevatedButton(
        child: Text(answer.answer),
        onPressed: () {
          setState(() {
            selectedAnswers.add(answer.answer);
            if (currentQuestionIndex < questionList.length - 1) {
              currentQuestionIndex++;
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Bitti!"),
                  content: Text(
                    "Verilen cevaplar:$selectedAnswers",
                  ),
                ),
              );
            }
          });
        },
      ),
    );
  }
}
