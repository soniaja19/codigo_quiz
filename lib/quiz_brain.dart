import 'package:codigo_quiz/question.dart';

class QuizBrain {
  final List<Question> _question = [
    //al colocarle el _ estamos indicando que la clase es privada.
    Question(questiontext: "¿He dormido 8 horas?", questionAnswer: false),
    Question(questiontext: "¿La tierra es plana?", questionAnswer: false),
    Question(questiontext: "¿El hombre fue a la luna?", questionAnswer: true),
    Question(questiontext: "¿Ella me quieres?", questionAnswer: false),
    Question(questiontext: "¿He almorzado hoy días?", questionAnswer: true),
  ];

  int _questionNumber = 0;

//Función  que devuelva el texto de una pregunta de acuerdo a su posición
  String getQuestionText() {
    return _question[_questionNumber].questiontext;
  }

//Función que devuelva la pregunta de una pregunta de acuerdo a su posición

  bool getQuestionAnswer() {
    return _question[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    _questionNumber++;
  }

  bool isFinshed() {
    if (_questionNumber >= _question.length - 1) {
      return true;
    }
    return false;
  }

  void restart() {
    _questionNumber = 0;
  }
}
