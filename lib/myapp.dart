import 'package:flutter/material.dart';
import 'package:navy_flutter/pages/home_page.dart';
import 'package:navy_flutter/pages/page_three.dart';
import 'package:navy_flutter/pages/page_two.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prática de Rotas Nomeadas',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const PageTwo(),
        '/third': (context) => const PageThree(),
      },
    );
  }
}
