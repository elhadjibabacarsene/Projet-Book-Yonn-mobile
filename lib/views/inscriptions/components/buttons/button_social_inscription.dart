import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ButtonSocialInscription extends StatefulWidget {

  final String text;

  const ButtonSocialInscription({ Key? key, required this.text }) : super(key: key);
  @override
  _ButtonSocialInscriptionState createState() => _ButtonSocialInscriptionState();
}

class _ButtonSocialInscriptionState extends State<ButtonSocialInscription> {
  @override
  Widget build(BuildContext context) {
    return Container(
                      width: 63,
                      height: 63,
                      child: TextButton(
                        child: Image(
                          image: AssetImage(widget.text),
                          width: 23.6,
                          height: 23.6,
                        ),
                        onPressed: null,
                        style: TextButton.styleFrom(
                          backgroundColor: HexColor('#efefef'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                        ),
                      ),
                    );
  }
}



