import 'package:flutter/material.dart';

class EmpresaScreen extends StatefulWidget {
  @override
  _EmpresaScreenState createState() => _EmpresaScreenState();
}

class _EmpresaScreenState extends State<EmpresaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Empresa'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_empresa.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sobre a Empresa',
                      style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere sodales tellus, auctor venenatis neque sollicitudin nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt, tellus vel hendrerit porta, arcu sapien mollis magna, a maximus eros justo sed velit. Proin iaculis justo lectus, ut elementum neque tempor eu. Nullam quam eros, ultrices ac libero dignissim, convallis rhoncus magna. Nulla porttitor iaculis tellus, id efficitur dolor auctor sit amet. Nam fermentum, ex et porttitor blandit, ex elit placerat sem, placerat varius dolor leo sed orci. Duis posuere consequat consectetur. Mauris efficitur convallis fringilla. Maecenas sollicitudin odio id leo fringilla ornare.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
