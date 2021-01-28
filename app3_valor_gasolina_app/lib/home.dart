import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  TextEditingController _controllerKmAlcool = TextEditingController();
  TextEditingController _controllerKmGasolina = TextEditingController();

  String _textoRsultado = '';

  void _calculoMelhor() {
    double precoAlcool = double.tryParse(_controllerAlcool.text);
    double precoGasolina = double.tryParse(_controllerGasolina.text);
    double kmAlcool = double.tryParse(_controllerKmAlcool.text);
    double kmGasolina = double.tryParse(_controllerKmGasolina.text);

    if (precoAlcool == null ||
        precoGasolina == null ||
        kmAlcool == null ||
        kmGasolina == null) {
      setState(() {
        _textoRsultado =
            'Número inválido, digite valores maiores que 0 e separados por ponto(.)';
      });
    } else {
      if ((kmGasolina / precoGasolina) > (kmAlcool / precoAlcool)) {
        setState(() {
          _textoRsultado = 'Gasolina é a melhor opção';
        });
      } else if (kmGasolina / precoGasolina < kmAlcool / precoAlcool) {
        setState(() {
          _textoRsultado = 'Álcool é a melhor opção';
        });
      } else if (kmGasolina / precoGasolina == kmAlcool / precoAlcool) {
        setState(() {
          _textoRsultado = 'Não tem diferença';
        });
      }
    }
    _limparCampos();
  }

  void _limparCampos() {
    _controllerGasolina.text = '';
    _controllerAlcool.text = '';
    _controllerKmAlcool.text = '';
    _controllerKmGasolina.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Álcool ou Gasolina')),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset('images/logo.png'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Saiba qual a melhor opção para o abastecimento do seu carro!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço Álcool, ex: 3.30',
                ),
                controller: _controllerAlcool,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Km/l Álcool, ex: 10.0',
                ),
                controller: _controllerKmAlcool,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço Gasolina, ex: 5.30',
                ),
                controller: _controllerGasolina,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Km/l Gasolina, ex: 10.0',
                ),
                controller: _controllerKmGasolina,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Calcular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.blue[900],
                  onPressed: _calculoMelhor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    _textoRsultado,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
