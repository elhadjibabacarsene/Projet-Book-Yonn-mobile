import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:book_yonn_mobile/views/demarrage/demarrage.dart';
import 'package:flutter/material.dart';
import 'views/home/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        home: Demarrage(),
        );
  }
}

