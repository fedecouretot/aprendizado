import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './novowidget.dart';

void main() {
  runApp(const MyApp());
}

class PerguntaAppState extends State<MyApp> {
  var PerguntaSelecionada = 0;
  void responder() {
    PerguntaSelecionada++;
    print(PerguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu esporte favorito?',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(perguntas[PerguntaSelecionada]),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: 220,
              child: CupertinoButton(
                color: Colors.green,
                onPressed: responder,
                child: const Text('Verde'),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: 220,
              child: CupertinoButton(
                color: Colors.blue,
                onPressed: responder,
                child: const Text('Azul'),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: 220,
              child: CupertinoButton(
                color: Colors.red,
                onPressed: responder,
                child: const Text('Vermelho'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perguntas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Perguntas'),
    );
  }
}
