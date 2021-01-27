import 'package:flutter/material.dart';

class ServicoScreen extends StatefulWidget {
  @override
  _ServicoScreenState createState() => _ServicoScreenState();
}

class _ServicoScreenState extends State<ServicoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Serviços'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_servico.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Nossos Serviços',
                      style: TextStyle(fontSize: 20, color: Colors.cyan),
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
