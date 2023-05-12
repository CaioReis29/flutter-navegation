import 'package:flutter/material.dart';
import 'package:navegacao_flutter/navegacao/page3.dart';
import 'package:navegacao_flutter/navegacao/page4.dart';
import 'package:navegacao_flutter/navegacao_params/detalhes.dart';
import 'package:navegacao_flutter/navegacao_params/lista.dart';
import 'img/images_page.dart';
//import 'home/home_page.dart';
import 'navegacao/homePage.dart';
import 'navegacao/homePage.dart' as navegacao;
import 'navegacao/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter na prática',
      //home: HomePage(),
      //home: HomePage(),
      initialRoute: '/navegacao_param',
      routes: {
        '/': (_) => navegacao.HomePage(),
        Page2.routeName: (_) => Page2(),
        Page3.routeName: (_) => Page3(),
        Page4.routeName: (_) => Page4(),
        '/navegacao_param': (_) => Lista(),
        '/detalhes': (_) => Detalhes(),
      },
    );
  }
}
