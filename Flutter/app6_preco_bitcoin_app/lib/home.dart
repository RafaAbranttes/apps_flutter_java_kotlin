import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _valor = '0';
  bool _fluxo = false;
  bool _dadoFinal = true;

  Future<void> _recuperarpreco() async {
    setState(() {
      _fluxo = true;
      _dadoFinal = true;
    });

    String url = 'http://blockchain.info/ticker';

    http.Response response = await http.get(url);

    Map<String, dynamic> dados = json.decode(response.body);

    setState(() {
      _valor = dados['BRL']['buy'].toString();
      _fluxo = true;
      _dadoFinal = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: !_fluxo && _dadoFinal
                    ? Text('')
                    : _dadoFinal && _fluxo
                        ? CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.orange),
                          )
                        : Text(
                            'R\$ $_valor',
                            style: TextStyle(fontSize: 35),
                          ),
              ),
              RaisedButton(
                child: Text(
                  'Atualizar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                onPressed: _recuperarpreco,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
