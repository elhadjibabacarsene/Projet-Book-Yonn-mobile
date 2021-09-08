import 'package:book_yonn_mobile/views/demarrage/demarrage.dart';
import 'package:book_yonn_mobile/views/connexion/connexion.form.dart';
import 'package:book_yonn_mobile/views/connexion/connexion_home.dart';
import 'package:book_yonn_mobile/views/inscriptions/inscriptions_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

         initialRoute: '/demarrage',
      routes: {
        '/connexion_home': (context) => ConnexionsHome(),
        '/inscription_home': (context) => InscriptionHome(),
        '/connexion_form': (context) => ConnexionsForm(),
        '/demarrage':(context)=>Demarrage(),
       
      },
      debugShowCheckedModeBanner: false
      );
}

  }
  

     

