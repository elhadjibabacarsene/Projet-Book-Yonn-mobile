import 'package:flutter/material.dart';
import 'components/app_bar_inscription/app_bar_inscription.dart';


class Inscription extends StatefulWidget {
  const Inscription({ Key? key }) : super(key: key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarInscription(),
        )
    );}
}