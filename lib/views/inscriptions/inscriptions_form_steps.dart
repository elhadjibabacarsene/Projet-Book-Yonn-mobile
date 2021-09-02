import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class InscriptionFormSteps{

  int _numberStep = 0;

  List<Widget> steps =[
      Column(children: [
          Text(
            'Bonjour, et si on se connaissez un peu mieux ?\nVeuillez renseigner votre nom et prénom.',
            style: TextStyle(
                height: 1.5,
                fontSize: 16,
                letterSpacing: 0.2,
                color: HexColor('#454f63'),
              ),
          ),
          SizedBox(
            height: 37,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Prénom(e) et nom',
              hintStyle: TextStyle(
                color: HexColor('#a4a4a4')
              ),
              filled: true,
              fillColor: HexColor('#efefef'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(7.0),
                  ),
                borderSide: BorderSide.none  
              )
            ),
          )  
      ],)
  ];

  void getNextStep(){
    if(_numberStep < steps.length - 1){
      _numberStep++;
    }
  }

  Widget getCurrentSteps(){
    return steps[_numberStep];
  }

}