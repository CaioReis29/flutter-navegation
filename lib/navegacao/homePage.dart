import 'package:flutter/material.dart';
import 'package:navegacao_flutter/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  static final String routeName = '/page2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Page2.routeName);
                },
                child: Text('Pagina 2 via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(name: 'Page2'),
                    builder: (context) => Page2(),
                  ));
                },
                child: Text('Pagina 2 via NAMED')),
          ],
        ),
      ),
    );
  }
}
