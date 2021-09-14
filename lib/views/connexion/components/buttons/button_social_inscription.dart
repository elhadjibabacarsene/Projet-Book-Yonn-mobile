import 'package:book_yonn_mobile/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonSocialConnexion extends StatefulWidget {

  final String text;
  
  const ButtonSocialConnexion({ Key? key, required this.text }) : super(key: key);
  @override
  _ButtonSocialConnexionState createState() => _ButtonSocialConnexionState();
}

class _ButtonSocialConnexionState extends State<ButtonSocialConnexion> {
  @override
  Widget build(BuildContext context) {
    return Container(
                      width: 70,
                      height: 70,
                      child: TextButton(
                        child: Image(
                          image: AssetImage(widget.text),
                          width: 27,
                          height: 27,
                        ),
                       onPressed: () {Navigator.of(context).push(navigateToMapForm());} ,
                        style: TextButton.styleFrom(
                          backgroundColor: colorGray,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            
                          )
                        ),
                      ),
                    );
  }
     navigateToMapForm(){
      Navigator.pushNamed(context, '/map');
    }
}



