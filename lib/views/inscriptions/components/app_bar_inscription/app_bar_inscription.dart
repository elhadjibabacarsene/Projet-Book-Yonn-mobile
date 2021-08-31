import 'package:flutter/material.dart';


class AppBarInscription extends StatefulWidget {
  const AppBarInscription({ Key? key }) : super(key: key);

  @override
  _AppBarInscriptionState createState() => _AppBarInscriptionState();
}

class _AppBarInscriptionState extends State<AppBarInscription> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Inscription'),
    );
  }
}