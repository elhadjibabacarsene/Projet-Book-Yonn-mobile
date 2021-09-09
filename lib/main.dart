import 'package:book_yonn_mobile/views/inscriptions/inscriptions_form.dart';
import 'package:book_yonn_mobile/views/inscriptions/inscriptions_home.dart';
import 'package:book_yonn_mobile/views/inscriptions/interfaces/abonne/abonne_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/abonne',
      routes: {
        '/abonne': (context) => AbonneMain(),
        '/inscription_home': (context) => InscriptionHome(),
        '/inscription_form': (context) => InscriptionsForm(),
      },
      debugShowCheckedModeBanner: false
    );
  }
}
