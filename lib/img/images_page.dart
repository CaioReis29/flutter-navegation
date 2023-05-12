import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagens',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img/paisagem.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'PAISAGEM',
                    style: TextStyle(
                      backgroundColor: Colors.white.withOpacity(0.2),
                      fontSize: 20,
                    ),
                  ),
                )),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://coodesh.com/blog/wp-content/uploads/2022/04/escolas-de-flutter-scaled.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
