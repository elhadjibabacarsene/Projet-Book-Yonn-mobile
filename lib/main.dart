import 'package:book_yonn_mobile/views/inscriptions/inscriptions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Inscription(), debugShowCheckedModeBanner: false);
  }
}
