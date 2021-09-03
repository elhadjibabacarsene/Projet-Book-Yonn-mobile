import 'package:book_yonn_mobile/views/inscriptions/components/form/custom_text_form_field.dart';
import 'package:book_yonn_mobile/views/inscriptions/components/form/message_text_form_field.dart';
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
          child: MessageTextFormField(message: 'Message d\'erreur', typeMessage: 'error',),
        ),
        CustomTextFormField(
          label: 'Mot de passe',
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: HexColor('#9f9f9f'),
          ),
        ),
        SizedBox(
          height: 37,
          child: MessageTextFormField(message: 'Message de confirmation', typeMessage: 'success',),
        ),
        CustomTextFormField(
          label: 'Confirmer mot de passe',
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: HexColor('#9f9f9f'),
          ),
        ),
      ],
    ),
    Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Text(
              'Choisissez une photo de profil afin d\'être facilement reconnaissable.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1.5,
                  fontSize: 17,
                  letterSpacing: 0.2,
                  color: HexColor('#454f63'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: CircleAvatar(
                backgroundColor: HexColor('#efefef'),
                radius: 70.0,
                child: Center(
                  child: Icon(
                      Icons.add,
                      color: HexColor('#d6d6d6'),
                      size: 70,
                    ),
                ),
              ),
            )
        ],
      ),
    )
  ];

  int getNumberStep(){
    return _numberStep;
  }

  void switchNextStep(){
    if(_numberStep < steps.length - 1){
      _numberStep++;
    }
  }

  void switchPrevStep(){
    if(_numberStep != 0){
      _numberStep--;
    }
  }

  Widget getCurrentSteps(){
    return steps[3];
  }

}