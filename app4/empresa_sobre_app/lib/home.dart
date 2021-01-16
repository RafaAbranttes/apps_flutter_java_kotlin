import 'package:empresa_sobre_app/cliente_screen.dart';
import 'package:empresa_sobre_app/contato_screen.dart';
import 'package:empresa_sobre_app/empresa_screen.dart';
import 'package:empresa_sobre_app/servico_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _abrirEmpresa() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EmpresaScreen()));
    }

    void _abrirServico() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ServicoScreen()));
    }

    void _abrirCliente() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ClienteScreen()));
    }

    void _abrirContato() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContatoScreen()));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset('images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset('images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset('images/menu_contato.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
