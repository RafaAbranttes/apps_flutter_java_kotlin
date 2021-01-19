import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> _recuperarCEP() async {
    String cep = '01311300';
    String url = 'http://viacep.com.br/ws/$cep/json/';
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    String estado = retorno['uf'];
    print(estado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de serviços web'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            RaisedButton(
              child: Text('Clique aqui'),
              onPressed: _recuperarCEP,
            )
          ],
        ),
      ),
    );
  }
}
