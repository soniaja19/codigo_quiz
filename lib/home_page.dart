import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionNumber = 0;

  List<String> question = [
    "¿He dormido 8 horas?",
    "¿La tierra es plana?",
    "¿El hombre fue a la luna?",
    "¿Ella me quieres?",
    "¿He almorzado hoy días?",
  ];

  List<bool> answers = [false, false, true, false, true];

  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282A3A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 9,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  question[questionNumber],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: const Text(
          //       "Hola",
          //     ),
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  //Obtenemos la respuesta correcta de  la pregunta
                  bool correctAnswer = answers[questionNumber];

                  //Comparamos la respuesta con el valor verdadero
                  if (correctAnswer == true) {
                    // Si la respuesta correcta es verdadera
                    // Se agrega un ícono a la lista de la respuesta
                    //  print("La respuesta es correcta: $correctAnswer");
                    scoreKeeper.add(
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );

                    // Si la respuesta correcta es falsa
                    // Se agrega un ícono de error a la lista de la respuesta
                  } else {
                    scoreKeeper.add(
                      const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                  }

                  //Se redibuja el widget = se ejecuta el método build
                  setState(() {});

                  //el valor de contador aumenta en 1 para que aoarezcan las preguntas
                  questionNumber++;
                },
                color: const Color(0xff3bceac),
                child: const Text(
                  "Verdadero",
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  // bool correctAnswer = answers[questionNumber];
                  // if (correctAnswer == false) {
                  // print("La respuesta es correcta: $correctAnswer");
                  //   scoreKeeper.add(
                  //     const Icon(
                  //       Icons.check,
                  //       color: Colors.green,
                  //     ),
                  //   );
                  // } else {
                  //   scoreKeeper.add(
                  //     const Icon(
                  //       Icons.close,
                  //       color: Colors.red,
                  //    ),
                  // );
                  //  }
                },
                color: const Color(0xffff6b6b),
                child: const Text(
                  "Falso",
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
