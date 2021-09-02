import 'package:book_yonn_mobile/views/inscriptions/components/form/custom_text_form_field.dart';
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
          CustomTextFormField(label: 'Prénom(s) et nom') 
      ],
    ),
    Column(
      children: [
        CustomTextFormField(
          label: 'Date de naissance',
          suffixIcon: Icon(
            Icons.calendar_today_outlined,
            color: HexColor('#9f9f9f'),
          ),
        ),
        SizedBox(height: 37,),
        CustomTextFormField(label: 'Adresse'),
        SizedBox(height: 37,),
        CustomTextFormField(label: 'Numéro de téléphone')
      ],
    ),
    Column(
      children: [
        CustomTextFormField(label: 'Email'),
        SizedBox(
          height: 37,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.warning,
                  color: HexColor('#ff2147'),
                  size: 18,
                ),
                SizedBox(
                  width: 10.5,
                ),
                Text(
                  'Message d\'erreur',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SF Pro Display Regular',
                    color: HexColor('#ff2147')
                  ),
                )
              ],
            ),
          ),
        ),
        CustomTextFormField(
          label: 'Mot de passe',
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: HexColor('#9f9f9f'),
          ),
        ),
        SizedBox(height: 37,),
        CustomTextFormField(
          label: 'Confirmer mot de passe',
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: HexColor('#9f9f9f'),
          ),
        ),
      ],
    )
  ];

  void getNextStep(){
    if(_numberStep < steps.length - 1){
      _numberStep++;
    }
  }

  Widget getCurrentSteps(){
    return steps[2];
  }

}