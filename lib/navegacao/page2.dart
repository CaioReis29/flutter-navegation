import 'package:flutter/material.dart';
import 'package:navegacao_flutter/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Page3.routeName);
                },
                child: Text('Pagina 3 via Name')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(name: 'Page3'),
                    builder: (context) => Page3(),
                  ));
                },
                child: Text('Pagina 3 via Page')),
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
