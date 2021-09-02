import 'package:book_yonn_mobile/views/inscriptions/components/buttons/button_big.dart';
import 'package:flutter/material.dart';
import 'components/app_bar_inscription/app_bar_inscription.dart';
import 'components/buttons/button_social_inscription.dart';
import 'package:hexcolor/hexcolor.dart';



class InscriptionHome extends StatefulWidget {
  const InscriptionHome({ Key? key }) : super(key: key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<InscriptionHome> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBarInscription(stepperVisibily: false,),
          ),
          body: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.only(top: 58.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Vous inscrire avec',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'SF Pro Display Regular',
                      color: HexColor('#454f63'),
                    ),
                    ),
                ),
                SizedBox(height: 40,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonSocialInscription(text: 'assets/icones/google.png',),
                      ButtonSocialInscription(text: 'assets/icones/facebook.png',),
                      ButtonSocialInscription(text: 'assets/icones/apple.png',),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  child: Text(
                            'Ou',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'SF Pro Display Regular',
                            color: HexColor('#454f63'),
                            ),
                      ),
                ),
                SizedBox(height: 70,),
                Container(
                  width: 305,
                  height: 50,
                  child: ButtonBig(
                      title: 'S\'inscrire avec un email',
                      bgColor: HexColor('#2884ff'),
                      textColor: HexColor('#ffffff'),
                      action: navigateToInscriptionForm,
                    ),
                ),
                SizedBox(height: 270,),
                Container(
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                        'J\'ai déjà un compte',
                        style: TextStyle(
                          fontFamily: 'Circular Std Bold',
                          fontSize: 19,
                          letterSpacing: 0.24,
                          color: HexColor('#2884ff'),
                        )
                      )
                  ),
                ),
              ]
            ),
          )
          ),
      )
    ;}

     void navigateToInscriptionForm(){
      Navigator.pushNamed(context, '/inscription_form');
    }
}