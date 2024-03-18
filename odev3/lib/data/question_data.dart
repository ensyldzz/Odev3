import 'package:odev3/model/question.dart';

List<Question> getQuestion() {
  List<Question> list = [];

  list.add(
    Question(
      question: "Saltanat hangi tarihte kaldırılmıştır?",
      answers: [
        Answer(answer: "1920"),
        Answer(answer: "1921"),
        Answer(answer: "1922"),
        Answer(answer: "1923"),
      ],
    ),
  );

  list.add(
    Question(
      question: "Hangisi Akdeniz bölgesinde yer almaz?",
      answers: [
        Answer(answer: "Kahramanmaraş"),
        Answer(answer: "Antalya"),
        Answer(answer: "Adana"),
        Answer(answer: "Karaman"),
      ],
    ),
  );

  list.add(
    Question(
      question: "Aksaray'ın plaka kodu kaçtır?",
      answers: [
        Answer(answer: "61"),
        Answer(answer: "58"),
        Answer(answer: "66"),
        Answer(answer: "68"),
      ],
    ),
  );

  list.add(
    Question(
      question: "Ani harabeleri nerededir?",
      answers: [
        Answer(answer: "Erzurum"),
        Answer(answer: "Kars"),
        Answer(answer: "Ağrı"),
        Answer(answer: "Van"),
      ],
    ),
  );

  return list;
}
