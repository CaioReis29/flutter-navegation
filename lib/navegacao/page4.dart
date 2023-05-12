import 'package:flutter/material.dart';
import 'package:navegacao_flutter/navegacao/homePage.dart';

class Page4 extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(routeName);
                },
                child: Text('Home Page via NAME')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        settings: RouteSettings(name: 'HomePage'),
                        builder: (context) => HomePage(),
                      ),
                      ModalRoute.withName('HomePage'));
                },
                child: Text('Home Page via PAGE')),
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
