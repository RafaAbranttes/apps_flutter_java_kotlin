import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _valorCep = TextEditingController();

  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;

  Future<void> _recuperarCEP() async {
    String cep = _valorCep.text;
    String url = 'http://viacep.com.br/ws/$cep/json/';
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      logradouro = retorno['logradouro'];
      complemento = retorno['complemento'];
      bairro = retorno['bairro'];
      localidade = retorno['localidade'];
      uf = retorno['uf'];
    });
    print(retorno);
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
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite o cep: ex: 05429100',
              ),
              style: TextStyle(fontSize: 20),
              controller: _valorCep,
            ),
            RaisedButton(
              child: Text('Clique aqui'),
              onPressed: _recuperarCEP,
            ),
            Column(
              children: [
                Text(
                    logradouro == null ? 'Endereço:' : 'Endereço: $logradouro'),
                Text(bairro == null ? 'Bairro' : 'Bairro: $bairro'),
                Text(localidade == null && uf == null
                    ? 'Estado'
                    : 'Estado: $localidade - $uf'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
