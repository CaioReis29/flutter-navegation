import 'package:flutter/material.dart';
import 'package:navegacao_flutter/navegacao_params/detalhes.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                // Forma mais complexa

                //Navigator.of(context).push(MaterialPageRoute(
                //settings: RouteSettings(
                //name: 'detalhe',
                //arguments: {
                //'id': 10
                //}
                //),
                //builder: (context) => Detalhes(),
                //)
                //);

                // Forma simples
                
                Navigator.of(context).pushNamed('/detalhes', arguments: {'id': 20});
              },
              child: Text(
                'Detalhes',
              ))
        ],
      )),
    );
  }
}
