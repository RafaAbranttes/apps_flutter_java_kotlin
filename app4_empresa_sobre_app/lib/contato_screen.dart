import 'package:flutter/material.dart';

class ContatoScreen extends StatefulWidget {
  @override
  _ContatoScreenState createState() => _ContatoScreenState();
}

class _ContatoScreenState extends State<ContatoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('Contato'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_contato.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sobre a Empresa',
                      style: TextStyle(fontSize: 20, color: Colors.green[300]),
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
