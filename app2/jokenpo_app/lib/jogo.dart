import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  List imagesJogo = [
    'images/papel.png',
    'images/pedra.png',
    'images/tesoura.png',
  ];

  bool _inicio = true;
  String _escolhaMaquina = null ?? 'images/padrao.png';
  bool _logica;

  void _escolhaDaMaquina({String escolhaJogador}) {
    setState(() {
      var escolha = Random().nextInt(imagesJogo.length);
      _escolhaMaquina = imagesJogo[escolha];
      _inicio = false;
    });

    _logica = _logicaJogo(
        escolhaJogador: escolhaJogador, escolhaMaquina: _escolhaMaquina);
  }

  bool _logicaJogo({String escolhaMaquina, String escolhaJogador}) {
    if (escolhaJogador.contains(escolhaMaquina)) {
      return null;
    } else if (escolhaJogador.contains('images/papel.png') &&
        escolhaMaquina.contains('images/pedra.png')) {
      return true;
    } else if (escolhaJogador.contains('images/pedra.png') &&
        escolhaMaquina.contains('images/tesoura.png')) {
      return true;
    } else if (escolhaJogador.contains('images/tesoura.png') &&
        escolhaMaquina.contains('images/papel.png')) {
      return true;
    } else {
      return false;
    }
  }

  void _reiniciar() {
    setState(() {
      _escolhaMaquina = 'images/padrao.png';
      _inicio = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('JokenPo')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Escolha do App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            child: Image.asset(_escolhaMaquina),
            onTap: _escolhaDaMaquina,
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Escolha uma opção abaixo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Image.asset(
                  'images/papel.png',
                  height: 95,
                ),
                onTap: () =>
                    _escolhaDaMaquina(escolhaJogador: 'images/papel.png'),
              ),
              GestureDetector(
                child: Image.asset(
                  'images/pedra.png',
                  height: 95,
                ),
                onTap: () =>
                    _escolhaDaMaquina(escolhaJogador: 'images/pedra.png'),
              ),
              GestureDetector(
                child: Image.asset(
                  'images/tesoura.png',
                  height: 95,
                ),
                onTap: () =>
                    _escolhaDaMaquina(escolhaJogador: 'images/tesoura.png'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: _inicio == true
                      ? Colors.blue
                      : _logica == true
                          ? Colors.green
                          : _logica == false
                              ? Colors.red
                              : Colors.amber,
                  border: Border.all(
                    width: 3,
                    color: _inicio == true
                        ? Colors.blue
                        : _logica == true
                            ? Colors.green
                            : _logica == false
                                ? Colors.red
                                : Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Text(_inicio == true
                    ? ''
                    : _logica == true
                        ? 'Ganhou'
                        : _logica == false
                            ? 'Perdeu'
                            : 'Empate'),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text(
              'Reiniciar',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: _reiniciar,
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
        ],
      ),
    );
  }
}
