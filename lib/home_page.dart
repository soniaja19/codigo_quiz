import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> question = [
    "¿He dormido 8 horas?",
    "¿La tierra es plana?",
    "¿El hombre fue a la luna?",
    "¿Ella me quieres?",
    "¿He almorzado hoy días?",
  ];
  List<Widget> scoreKeeper = [
    const Icon(
      Icons.check,
      color: Color(0xff3bceac),
      size: 30.0,
    ),
  ];

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
                  question[4],
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
                  scoreKeeper.add(const Icon(
                    Icons.close,
                    color: Colors.white,
                  ));

                  setState(() {});
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
                onPressed: () {},
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
