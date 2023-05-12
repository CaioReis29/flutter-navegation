import 'package:flutter/material.dart';
import 'package:navegacao_flutter/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  static final String routeName = '/page4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Page4.routeName);
                },
                child: Text('Pagina 4 via NAME')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    settings: RouteSettings(name: 'Page4'),
                    builder: (context) => Page4(),
                  ));
                },
                child: Text('Pagina 4 via PAGE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('pop'))
          ],
        ),
      ),
    );
  }
}
