import 'package:flutter/material.dart';
import 'components/app_bar_inscription/app_bar_inscription.dart';
import 'package:hexcolor/hexcolor.dart';
import 'components/buttons/button_social_inscription.dart';


class Inscription extends StatefulWidget {
  const Inscription({ Key? key }) : super(key: key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarInscription(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 58.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Vous inscrire avec',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SF Pro Display Regular',
                    color: HexColor('#454f63'),
                  ),
                  ),
              ),
              SizedBox(height: 34,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonSocialInscription(text: 'assets/icones/google.png',),
                    ButtonSocialInscription(text: 'assets/icones/facebook.png',),
                    ButtonSocialInscription(text: 'assets/icones/apple.png',),
                  ],
                ),
              )
            ]
          ),
        ),
    )
    ;}
}